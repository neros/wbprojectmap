library(lubridate)
library(googleVis)
library(plyr)

getProjectData <- function()
{
     if (exists("cdata")) return(cdata)
     
     if (!file.exists("./wbprojects.csv")) download.file("http://search.worldbank.org/api/projects/all.csv","wbprojects.csv")
     
     wbg <- read.csv("./wbprojects.csv",header=TRUE,stringsAsFactors=FALSE,sep=",",quote="")
     gnames <- read.csv("./google_country_names.csv",header=T,stringsAsFactors=F)
     
     pdata <- wbg[,c("id","regionname","countryname","status","project_name","lendprojectcost","totalamt","boardapprovaldate","closingdate","Country")]
     pdata <- subset(pdata,status != "Dropped")
     pdata$approval_date <- parse_date_time(pdata$boardapprovaldate,orders=c("YmdHMS"))
     pdata$completion_date <- parse_date_time(pdata$closingdate,orders=c("YmdHMS"))
     
     pdata$amtA <-as.numeric(gsub(";","",pdata$lendprojectcost))
     pdata$amtB <-as.numeric(gsub(";","",pdata$totalamt))
     pdata$project_size <- apply(pdata[,c("amtA","amtB")],1,FUN=function(x) { max(x,na.rm=T) })
     pdata$cname <- sapply(strsplit(pdata$countryname,split=";",fixed=T),FUN=function(x) { paste(unique(unlist(x)),collapse="") })
     pdata$ccode <- sapply(strsplit(pdata$Country,split=";",fixed=T),FUN=function(x) { gsub("[[:space:]]", "",paste(unique(unlist(x)),collapse="")) })
     pdata$ccode[pdata$ccode==""] <- NA
     
     pdata$country_code = NA
     pdata$country_code[!is.na(pdata$ccode) & nchar(pdata$ccode) == 2] <- pdata$ccode[!is.na(pdata$ccode) & nchar(pdata$ccode) == 2]
     pdata$country_code[is.na(pdata$country_code)] <- (gnames$Country.Code[match(pdata$cname,gnames$Name)])[is.na(pdata$country_code)]
     pdata$country_code[is.na(pdata$country_code)] <- (gnames$Country.Code[match(pdata$cname,gnames$Canonical.Name)])[is.na(pdata$country_code)]
     pdata$country_code[is.na(pdata$country_code)] <- (gnames$Country.Code[match(pdata$cname,gnames$WBG.Match)])[is.na(pdata$country_code)]
     
     cdata <<- subset(pdata,!is.na(pdata$country_code) & nchar(pdata$country_code)==2)

     return(cdata)
}

getMapData <- function(startYear,endYear=startYear)
{
     project_data <- getProjectData()
     if (is.na(startYear)) startYear <- 1947
     if (is.na(endYear)) endYear <- startYear
     if (startYear < 1947) startYear <- 1947
     if (startYear > 2015) startYear <- 2015
     if (endYear < 1947) endYear <- 1947
     if (endYear > 2015) endYear <- 2015
     if (endYear < startYear) endYear <- startYear
     if (startYear > endYear) startYear <- endYear
     
     prj <- subset(project_data,year(project_data$approval_date)<=endYear & (year(project_data$completion_date) >= startYear | is.na(project_data$completion_date)),select=c("project_size","country_code","cname"))
     prj_by_country <- ddply(prj,.(country_code,cname),summarize,size=sum(project_size),count=length(project_size))
     prj_by_country$units <- paste("$",prj_by_country$size,"",sep="")
     prj_by_country$units[prj_by_country$size >= 1000000] <- paste("$",round(prj_by_country$size[prj_by_country$size >= 1000000]/1000000,1),"m",sep="")     
     prj_by_country$units[prj_by_country$size >= 1000000000] <- paste("$",round(prj_by_country$size[prj_by_country$size >= 1000000000]/1000000000,1),"bn",sep="")
     
     prj_by_country$label <- paste(prj_by_country$cname," | ",prj_by_country$count," Projects | ",prj_by_country$units," lending",sep="")
     mapData <<- prj_by_country #update
     return(prj_by_country)
}

getMap <- function(w=1000,h=450)
{
     if (!exists("mapData")) mapData <- getMapData(1947)
     gvisGeoChart(mapData, locationvar = "country_code", colorvar = "size", hovervar = "label", options=list(width=w, height=h,giv.plot.tag="chart"), chartid="project_map")
}

