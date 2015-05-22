---
title       : Interactive World Bank Project Map 
subtitle    : Overview of Shiny Application
author      : Soren Heitmann
job        : May, 2015
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap, shiny, interactive }
mode        : selfcontained # {standalone, draft}
---

## Overview

This presentation introduces the World Bank Interactive Project Map, a shiny application available online here: 
<a href='https://neros.shinyapps.io/wb_project_map/'>https://neros.shinyapps.io/wb_project_map/</a>  
  
The map reports aggregate World Bank project funding activity by time period for either:  
(1) All active projects in a given year (2) For a range period of active projects

### User Interface: 
(1) Two timeline slide bars (2) Country detail mouse-over (3) "play" buttons (under slider bars)

### The Data Includes: 
- Active and Closed country-specific projects (excluding multi-country, regional or global).  
- Project volumes are taken as the maximum of project's total size or commited financing

This application's data source is <a href='http://data.worldbank.org/data-catalog/projects-portfolio'>publicly-available World Bank Project data</a>.

--- .class #1 

## Using the Map: What can we see?  
### Post WW II Reconstruction

The Interactive Map illustrates a number of interesting points

The World Bank (the specific institution is called the International Bank for Reconstruction and Development, or IBRD) 
was founded to help finance reconstruction post World War II.  
  
We can see this mandate clearly from 1947 and into the 1950s, with active projects in Western Europe, Japan and Australia.  

Over time, we can see a shift in strategy as the bank moves from reconstruction to development, with financing into Latin America, Asia and Africa.

--- .class #3 

## Using the Map: What can we see?  
### Shift to economic growth and development

As early as the 1950s, we can see strategic focus in Brazil and India, which remain in-focus through today; and funding moving into Africa.

China emerges as a strategic focus in the mid-1980s, with funding leading into East Asia Pacific a few years earlier and then growing.  

With the collapse of the USSR in the early 1990's, funding emerges into the former Soviet Bloc.  Afterward, the map highlights the emergence of the so-called BRICs (Brazil, Russia, India, China), as projects support these fast-growing economies.

Into the late 90s and 2000s, greater emphasis moves into Africa, with more countries receiving lending and in proportionally greater volumes


--- .class #4

## R-Embedded Example Map
A shiny chart (an R expression that's evaluated and displayed--echo off for space), reporting the full, global World Bank lending history: All projects from 1947-2015.  Total project volumes exceed $206 bn USD.  Try the mouse-over to explore specific countries.  <a href='https://neros.shinyapps.io/wb_project_map/'>Try the application</a> to explore the timeline interactivity.
<!-- GeoChart generated in R 3.1.2 by googleVis 0.5.8 package -->
<!-- Fri May 22 20:32:03 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataproject_map () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "3A",
"Africa | 16 Projects | $1.4bn lending",
1404350000 
],
[
 "4E",
"East Asia and Pacific | 1 Projects | $24m lending",
24010000 
],
[
 "6L",
"Latin America | 1 Projects | $5m lending",
5e+06 
],
[
 "6O",
"Organization of Eastern Caribbean States | 1 Projects | $53.1m lending",
53120000 
],
[
 "7B",
"South Eastern Europe and Balkans | 2 Projects | $41m lending",
41030000 
],
[
 "7C",
"Central Asia | 2 Projects | $55m lending",
55030000 
],
[
 "AF",
"Islamic  Republic of Afghanistan | 126 Projects | $6.5bn lending",
6530670000 
],
[
 "AG",
"Antigua and Barbuda | 1 Projects | $10m lending",
1e+07 
],
[
 "AL",
"Republic of Albania | 104 Projects | $3.2bn lending",
3187870000 
],
[
 "AM",
"Republic of Armenia | 104 Projects | $2.6bn lending",
2560420000 
],
[
 "AO",
"Republic of Angola | 25 Projects | $1.5bn lending",
1486480000 
],
[
 "AR",
"Argentine Republic | 192 Projects | $50.9bn lending",
50946830000 
],
[
 "AT",
"Republic of Austria | 9 Projects | $106.4m lending",
106400000 
],
[
 "AU",
"Commonwealth of Australia | 7 Projects | $417.7m lending",
417700000 
],
[
 "AZ",
"Republic of Azerbaijan | 67 Projects | $5.5bn lending",
5509650000 
],
[
 "BA",
"Bosnia and Herzegovina | 86 Projects | $3.8bn lending",
3.85e+09 
],
[
 "BB",
"Barbados | 14 Projects | $241m lending",
241040000 
],
[
 "BD",
"People's Republic of Bangladesh | 309 Projects | $47.9bn lending",
47863850000 
],
[
 "BE",
"Kingdom of Belgium | 4 Projects | $76m lending",
7.6e+07 
],
[
 "BF",
"Africa | 1 Projects | $3.9m lending",
3900000 
],
[
 "BF",
"Burkina Faso | 129 Projects | $5.1bn lending",
5079420000 
],
[
 "BG",
"Republic of Bulgaria | 46 Projects | $4.2bn lending",
4191880000 
],
[
 "BI",
"Africa | 1 Projects | $63.7m lending",
63660000 
],
[
 "BI",
"Republic of Burundi | 96 Projects | $2.3bn lending",
2310580000 
],
[
 "BJ",
"Africa | 1 Projects | $35m lending",
3.5e+07 
],
[
 "BJ",
"Republic of Benin | 106 Projects | $2.4bn lending",
2410830000 
],
[
 "BO",
"Plurinational State of Bolivia | 131 Projects | $4.4bn lending",
4393580000 
],
[
 "BR",
"Federative Republic of Brazil | 480 Projects | $116.6bn lending",
116615810000 
],
[
 "BS",
"Commonwealth of The Bahamas | 6 Projects | $43.4m lending",
43360000 
],
[
 "BT",
"Kingdom of Bhutan | 36 Projects | $355.4m lending",
355370000 
],
[
 "BT",
"South Asia | 1 Projects | $2.2m lending",
2250000 
],
[
 "BW",
"Africa | 1 Projects | $26m lending",
26040000 
],
[
 "BW",
"Republic of Botswana | 32 Projects | $2.7bn lending",
2657320000 
],
[
 "BY",
"Republic of Belarus | 25 Projects | $1.7bn lending",
1702220000 
],
[
 "BZ",
"Belize | 20 Projects | $197m lending",
196990000 
],
[
 "CD",
"Africa | 1 Projects | $92.1m lending",
92100000 
],
[
 "CD",
"Democratic Republic of the Congo | 113 Projects | $4.9bn lending",
4867510000 
],
[
 "CF",
"Central African Republic | 57 Projects | $833.2m lending",
833220000 
],
[
 "CG",
"Republic of Congo | 51 Projects | $1.3bn lending",
1333190000 
],
[
 "CI",
"Africa | 2 Projects | $438.8m lending",
438800000 
],
[
 "CI",
"Republic of Cote d'Ivoire | 136 Projects | $7.9bn lending",
7869610000 
],
[
 "CL",
"Republic of Chile | 93 Projects | $8.9bn lending",
8856500000 
],
[
 "CM",
"Africa | 1 Projects | $15m lending",
1.5e+07 
],
[
 "CM",
"Republic of Cameroon | 121 Projects | $5.1bn lending",
5143190000 
],
[
 "CN",
"People's Republic of China | 488 Projects | $182.7bn lending",
182709210000 
],
[
 "CO",
"Republic of Colombia | 255 Projects | $29bn lending",
29010780000 
],
[
 "CR",
"Republic of Costa Rica | 56 Projects | $2.2bn lending",
2201310000 
],
[
 "CV",
"Republic of Cabo Verde | 39 Projects | $562.4m lending",
562420000 
],
[
 "CY",
"Republic of Cyprus | 30 Projects | $489.8m lending",
489800000 
],
[
 "CZ",
"Czech Republic | 9 Projects | $2.1bn lending",
2127300000 
],
[
 "DJ",
"Republic of Djibouti | 46 Projects | $405.8m lending",
405750000 
],
[
 "DK",
"Kingdom of Denmark | 3 Projects | $85m lending",
8.5e+07 
],
[
 "DM",
"Commonwealth of Dominica | 9 Projects | $73.9m lending",
73900000 
],
[
 "DO",
"Dominican Republic | 62 Projects | $2.5bn lending",
2549820000 
],
[
 "DZ",
"People's Democratic Republic of Algeria | 76 Projects | $7.7bn lending",
7666410000 
],
[
 "EC",
"Republic of Ecuador | 109 Projects | $6.2bn lending",
6209400000 
],
[
 "EE",
"Republic of Estonia | 8 Projects | $258m lending",
2.58e+08 
],
[
 "EG",
"Arab Republic of Egypt | 161 Projects | $34.2bn lending",
34191940000 
],
[
 "ER",
"State of Eritrea | 18 Projects | $837.5m lending",
837470000 
],
[
 "ES",
"Kingdom of Spain | 12 Projects | $478.7m lending",
478700000 
],
[
 "ET",
"Africa | 1 Projects | $9.1m lending",
9090000 
],
[
 "ET",
"Federal Democratic Republic of Ethiopia | 170 Projects | $34.4bn lending",
34442740000 
],
[
 "FI",
"Republic of Finland | 18 Projects | $316.8m lending",
316800000 
],
[
 "FJ",
"Republic of Fiji | 15 Projects | $402.8m lending",
402800000 
],
[
 "FM",
"Federated States of Micronesia | 3 Projects | $92.4m lending",
92400000 
],
[
 "FR",
"French Republic | 1 Projects | $250m lending",
2.5e+08 
],
[
 "GA",
"Africa | 1 Projects | $109m lending",
1.09e+08 
],
[
 "GA",
"Gabonese Republic | 21 Projects | $369m lending",
369040000 
],
[
 "GD",
"Grenada | 16 Projects | $102.6m lending",
102600000 
],
[
 "GE",
"Georgia | 87 Projects | $3bn lending",
2957230000 
],
[
 "GH",
"Africa | 1 Projects | $83m lending",
8.3e+07 
],
[
 "GH",
"Republic of Ghana | 216 Projects | $12.6bn lending",
12597180000 
],
[
 "GM",
"Republic of The Gambia | 52 Projects | $563.3m lending",
563260000 
],
[
 "GN",
"Republic of Guinea | 96 Projects | $2.7bn lending",
2699940000 
],
[
 "GQ",
"Republic of Equatorial Guinea | 11 Projects | $46.5m lending",
46550000 
],
[
 "GT",
"Republic of Guatemala | 7 Projects | $271.5m lending",
271530000 
],
[
 "GU",
"Republic of Guatemala | 63 Projects | $3.7bn lending",
3672480000 
],
[
 "GW",
"Republic of Guinea-Bissau | 54 Projects | $569.1m lending",
569060000 
],
[
 "GY",
"Co-operative Republic of Guyana | 56 Projects | $574.3m lending",
574270000 
],
[
 "GZ",
"Middle East and North Africa | 1 Projects | $8m lending",
8e+06 
],
[
 "GZ",
"West Bank and Gaza | 33 Projects | $769m lending",
769050000 
],
[
 "HN",
"Republic of Honduras | 126 Projects | $4.2bn lending",
4230050000 
],
[
 "HR",
"Republic of Croatia | 66 Projects | $5.9bn lending",
5911610000 
],
[
 "HT",
"Republic of Haiti | 91 Projects | $1.9bn lending",
1933110000 
],
[
 "HU",
"Hungary | 48 Projects | $6.6bn lending",
6594830000 
],
[
 "ID",
"Republic of Indonesia | 498 Projects | $77bn lending",
77012440000 
],
[
 "IE",
"Ireland | 8 Projects | $152.5m lending",
152500000 
],
[
 "IL",
"State of Israel | 11 Projects | $284.5m lending",
284500000 
],
[
 "IN",
"Republic of India | 652 Projects | $206.9bn lending",
206861070000 
],
[
 "IQ",
"Republic of Iraq | 43 Projects | $1.8bn lending",
1831440000 
],
[
 "IR",
"Islamic Republic of Iran | 1 Projects | $200.3m lending",
200300000 
],
[
 "IS",
"Republic of Iceland | 10 Projects | $47.1m lending",
47100000 
],
[
 "IT",
"Italian Republic | 8 Projects | $399.6m lending",
399600000 
],
[
 "JM",
"Jamaica | 94 Projects | $3bn lending",
3047330000 
],
[
 "JO",
"Hashemite Kingdom of Jordan | 111 Projects | $6.2bn lending",
6237350000 
],
[
 "JP",
"Japan | 31 Projects | $862.9m lending",
862900000 
],
[
 "KE",
"Republic of Kenya | 220 Projects | $15bn lending",
15023470000 
],
[
 "KG",
"Central Asia | 1 Projects | $54m lending",
5.4e+07 
],
[
 "KG",
"Kyrgyz Republic | 94 Projects | $3.6bn lending",
3599660000 
],
[
 "KH",
"Kingdom of Cambodia | 59 Projects | $1.4bn lending",
1424870000 
],
[
 "KI",
"Republic of Kiribati | 11 Projects | $122.5m lending",
122470000 
],
[
 "KM",
"Africa | 1 Projects | $22m lending",
2.2e+07 
],
[
 "KM",
"Union of the Comoros | 32 Projects | $193m lending",
193010000 
],
[
 "KN",
"St. Kitts and Nevis | 5 Projects | $78m lending",
77980000 
],
[
 "KR",
"Republic of Korea | 128 Projects | $19.5bn lending",
19543670000 
],
[
 "KZ",
"Republic of Kazakhstan | 51 Projects | $9bn lending",
9006170000 
],
[
 "LA",
"Lao People's Democratic Republic | 97 Projects | $3.2bn lending",
3248120000 
],
[
 "LB",
"Lebanese Republic | 54 Projects | $3.9bn lending",
3926130000 
],
[
 "LC",
"Organization of Eastern Caribbean States | 2 Projects | $73.6m lending",
73600000 
],
[
 "LC",
"St. Lucia | 17 Projects | $138.1m lending",
138130000 
],
[
 "LK",
"Democratic Socialist Republic of Sri Lan | 151 Projects | $12.2bn lending",
12171140000 
],
[
 "LR",
"Republic of Liberia | 99 Projects | $1.8bn lending",
1766860000 
],
[
 "LS",
"Kingdom of Lesotho | 53 Projects | $4.4bn lending",
4424150000 
],
[
 "LT",
"Republic of Lithuania | 19 Projects | $806.5m lending",
806510000 
],
[
 "LU",
"Grand Duchy of Luxembourg | 1 Projects | $12m lending",
1.2e+07 
],
[
 "LV",
"Republic of Latvia | 25 Projects | $1.3bn lending",
1310360000 
],
[
 "LY",
"Socialist People's Libyan Arab Jamahiriy | 1 Projects | $3m lending",
3e+06 
],
[
 "MA",
"Kingdom of Morocco | 203 Projects | $28.5bn lending",
28492850000 
],
[
 "MD",
"Republic of Moldova | 87 Projects | $1.5bn lending",
1512210000 
],
[
 "ME",
"Montenegro | 22 Projects | $499.7m lending",
499700000 
],
[
 "MG",
"Republic of Madagascar | 150 Projects | $5.8bn lending",
5819870000 
],
[
 "MH",
"Republic of the Marshall Islands | 4 Projects | $19.7m lending",
19680000 
],
[
 "MK",
"Macedonia former Yugoslav Republic of | 60 Projects | $2bn lending",
1966860000 
],
[
 "ML",
"Africa | 1 Projects | $125m lending",
1.25e+08 
],
[
 "ML",
"Republic of Mali | 125 Projects | $5.2bn lending",
5156390000 
],
[
 "MM",
"Republic of the Union of Myanmar | 7 Projects | $612.8m lending",
612800000 
],
[
 "MN",
"Mongolia | 69 Projects | $908.1m lending",
908060000 
],
[
 "MR",
"Islamic Republic of Mauritania | 89 Projects | $2bn lending",
1995330000 
],
[
 "MT",
"Republic of Malta | 1 Projects | $7.5m lending",
7500000 
],
[
 "MU",
"Republic of Mauritius | 53 Projects | $1.1bn lending",
1051800000 
],
[
 "MV",
"Republic of Maldives | 25 Projects | $451.4m lending",
451350000 
],
[
 "MW",
"Africa | 1 Projects | $69m lending",
6.9e+07 
],
[
 "MW",
"Republic of Malawi | 145 Projects | $5.8bn lending",
5822410000 
],
[
 "MX",
"United Mexican States | 286 Projects | $108.7bn lending",
108657750000 
],
[
 "MY",
"Malaysia | 91 Projects | $5.3bn lending",
5286730000 
],
[
 "MZ",
"Republic of Mozambique | 133 Projects | $9.4bn lending",
9433870000 
],
[
 "NA",
"Republic of Namibia | 2 Projects | $36.5m lending",
36540000 
],
[
 "NE",
"Africa | 1 Projects | $785m lending",
785040000 
],
[
 "NE",
"Republic of Niger | 105 Projects | $3.2bn lending",
3237730000 
],
[
 "NG",
"Africa | 1 Projects | $46.6m lending",
46650000 
],
[
 "NG",
"Federal Republic of Nigeria | 201 Projects | $24.1bn lending",
24066360000 
],
[
 "NI",
"Latin America | 1 Projects | $13m lending",
1.3e+07 
],
[
 "NI",
"Republic of Nicaragua | 117 Projects | $2.9bn lending",
2919060000 
],
[
 "NL",
"Kingdom of the Netherlands | 8 Projects | $244m lending",
2.44e+08 
],
[
 "NO",
"Kingdom of Norway | 6 Projects | $145m lending",
1.45e+08 
],
[
 "NP",
"Nepal | 144 Projects | $13.1bn lending",
13062020000 
],
[
 "NP",
"South Asia | 2 Projects | $283.3m lending",
283300000 
],
[
 "NZ",
"New Zealand | 6 Projects | $126.8m lending",
126800000 
],
[
 "OM",
"Sultanate of Oman | 11 Projects | $157.1m lending",
157100000 
],
[
 "PA",
"Republic of Panama | 69 Projects | $3.6bn lending",
3610620000 
],
[
 "PE",
"Republic of Peru | 166 Projects | $13.7bn lending",
13694220000 
],
[
 "PG",
"The Independent State of Papua New Guine | 69 Projects | $1.7bn lending",
1716600000 
],
[
 "PH",
"Republic of the Philippines | 264 Projects | $25.1bn lending",
25062330000 
],
[
 "PK",
"Islamic Republic of Pakistan | 334 Projects | $84.8bn lending",
84751820000 
],
[
 "PL",
"Republic of Poland | 61 Projects | $19.5bn lending",
19470730000 
],
[
 "PS",
"West Bank and Gaza | 4 Projects | $569.2m lending",
569230000 
],
[
 "PT",
"Portuguese Republic | 32 Projects | $1.3bn lending",
1338800000 
],
[
 "PW",
"Republic of Palau | 1 Projects | $440000 lending",
440000 
],
[
 "PY",
"Republic of Paraguay | 64 Projects | $1.9bn lending",
1942360000 
],
[
 "RO",
"Romania | 106 Projects | $15.8bn lending",
15807600000 
],
[
 "RS",
"Republic of Serbia | 38 Projects | $2.5bn lending",
2477200000 
],
[
 "RU",
"Russian Federation | 78 Projects | $19.6bn lending",
19558640000 
],
[
 "RW",
"Africa | 1 Projects | $24m lending",
2.4e+07 
],
[
 "RW",
"Republic of Rwanda | 114 Projects | $3.7bn lending",
3746670000 
],
[
 "RY",
"Republic of Yemen | 31 Projects | $1.5bn lending",
1487390000 
],
[
 "SB",
"Solomon Islands | 29 Projects | $211.9m lending",
211890000 
],
[
 "SC",
"Republic of Seychelles | 16 Projects | $66.3m lending",
66270000 
],
[
 "SD",
"Republic of South Sudan | 9 Projects | $476.7m lending",
476660000 
],
[
 "SD",
"Republic of the Sudan | 8 Projects | $300.8m lending",
300770000 
],
[
 "SG",
"Republic of Singapore | 14 Projects | $181.3m lending",
181300000 
],
[
 "SI",
"Republic of Slovenia | 10 Projects | $310.7m lending",
310690000 
],
[
 "SK",
"Slovak Republic | 11 Projects | $856.7m lending",
856710000 
],
[
 "SL",
"Republic of Sierra Leone | 102 Projects | $1.8bn lending",
1799550000 
],
[
 "SN",
"Republic of Senegal | 170 Projects | $7.5bn lending",
7532630000 
],
[
 "SO",
"Somali Democratic Republic | 54 Projects | $541.2m lending",
541160000 
],
[
 "SS",
"Republic of South Sudan | 8 Projects | $245.7m lending",
245730000 
],
[
 "ST",
"Africa | 1 Projects | $14.9m lending",
14900000 
],
[
 "ST",
"Democratic Republic of Sao Tome and Prin | 28 Projects | $131.7m lending",
131660000 
],
[
 "SV",
"Republic of El Salvador | 58 Projects | $2.7bn lending",
2715920000 
],
[
 "SZ",
"Kingdom of Swaziland | 19 Projects | $212.7m lending",
212730000 
],
[
 "TD",
"Republic of Chad | 69 Projects | $1.8bn lending",
1808480000 
],
[
 "TG",
"Republic of Togo | 82 Projects | $1.4bn lending",
1395300000 
],
[
 "TH",
"Kingdom of Thailand | 163 Projects | $16.3bn lending",
16272470000 
],
[
 "TJ",
"Central Asia | 1 Projects | $54m lending",
5.4e+07 
],
[
 "TJ",
"Republic of Tajikistan | 80 Projects | $973.4m lending",
973420000 
],
[
 "TL",
"Democratic Republic of Timor-Leste | 37 Projects | $484.5m lending",
484540000 
],
[
 "TM",
"Turkmenistan | 5 Projects | $99.4m lending",
99360000 
],
[
 "TN",
"Middle East and North Africa | 1 Projects | $6e+05 lending",
6e+05 
],
[
 "TN",
"Republic of Tunisia | 172 Projects | $11bn lending",
11029970000 
],
[
 "TO",
"Kingdom of Tonga | 16 Projects | $161m lending",
161010000 
],
[
 "TP",
"Democratic Republic of Timor-Leste | 8 Projects | $62.4m lending",
62370000 
],
[
 "TR",
"Republic of Turkey | 211 Projects | $52.6bn lending",
52574350000 
],
[
 "TT",
"Republic of Trinidad and Tobago | 25 Projects | $458.8m lending",
458780000 
],
[
 "TV",
"Tuvalu | 7 Projects | $49.1m lending",
49060000 
],
[
 "TZ",
"Africa | 2 Projects | $229.5m lending",
229500000 
],
[
 "TZ",
"United Republic of Tanzania | 241 Projects | $22.6bn lending",
22622930000 
],
[
 "UA",
"Ukraine | 68 Projects | $12.8bn lending",
12786040000 
],
[
 "UG",
"Africa | 1 Projects | $1.5m lending",
1500000 
],
[
 "UG",
"Republic of Uganda | 194 Projects | $11.4bn lending",
11351560000 
],
[
 "UY",
"Oriental Republic of Uruguay | 82 Projects | $6.2bn lending",
6199890000 
],
[
 "UZ",
"Republic of Uzbekistan | 35 Projects | $4.6bn lending",
4601080000 
],
[
 "VC",
"Organization of Eastern Caribbean States | 1 Projects | $2.3m lending",
2300000 
],
[
 "VC",
"St. Vincent and the Grenadines | 9 Projects | $80.6m lending",
80610000 
],
[
 "VE",
"Republica Bolivariana de Venezuela | 46 Projects | $4.8bn lending",
4815050000 
],
[
 "VN",
"Socialist Republic of Vietnam | 215 Projects | $27.3bn lending",
27267790000 
],
[
 "VU",
"Pacific Islands | 1 Projects | $2.1m lending",
2150000 
],
[
 "VU",
"Republic of Vanuatu | 14 Projects | $122.1m lending",
122140000 
],
[
 "WS",
"Samoa | 31 Projects | $308.7m lending",
308700000 
],
[
 "XK",
"Republic of Kosovo | 13 Projects | $140.2m lending",
140210000 
],
[
 "YE",
"Republic of Yemen | 176 Projects | $4.2bn lending",
4241190000 
],
[
 "YF",
"Republic of Serbia | 15 Projects | $912.5m lending",
912460000 
],
[
 "ZA",
"Africa | 1 Projects | $3.5m lending",
3500000 
],
[
 "ZA",
"Republic of South Africa | 29 Projects | $12.5bn lending",
12528380000 
],
[
 "ZM",
"Africa | 1 Projects | $110m lending",
1.1e+08 
],
[
 "ZM",
"Republic of Zambia | 139 Projects | $6.5bn lending",
6534470000 
],
[
 "ZM",
"Southern Africa | 1 Projects | $6m lending",
6e+06 
],
[
 "ZR",
"Democratic Republic of the Congo | 30 Projects | $2.7bn lending",
2681050000 
],
[
 "ZW",
"Republic of Zimbabwe | 47 Projects | $3bn lending",
2993640000 
] 
];
data.addColumn('string','country_code');
data.addColumn('string','label');
data.addColumn('number','size');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartproject_map() {
var data = gvisDataproject_map();
var options = {};
options["width"] =   1000;
options["height"] =    400;
options["giv.plot.tag"] = "chart";

    var chart = new google.visualization.GeoChart(
    document.getElementById('project_map')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "geochart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartproject_map);
})();
function displayChartproject_map() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartproject_map"></script>
 
<!-- divChart -->
  
<div id="project_map" 
  style="width: 1000; height: 400;">
</div>
