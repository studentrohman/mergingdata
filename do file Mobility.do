
clear 
set more off
capture log close 
cd "D:\mobility\"
global data D:\dekstop\korona_13feb2020
import delimited D:\mobility\mobility.csv, varnames(1) clear 

foreach X in retail_recreation grocery_pharmacy park transit_station workplace residential  {
replace `X'= subinstr(`X',"%", "",.)
destring `X', replace
}


ren negara countryname

replace countryname=	"Yemen, Rep."	if countryname==	"Yemen "
replace countryname=	"Cabo Verde"	if countryname==	"Cape Verde "
*replace countryname=	"Guinea"	if countryname==	"Guinea-Bissau"
*replace countryname=	"Dominica"	if countryname==	"Dominican Republic "
replace countryname=	"Myanmar"	if countryname==	"Myanmar (Burma) "
replace countryname=	"Bahamas, The"	if countryname==	"The Bahamas "
replace countryname=	"Cote d'Ivoire"	if countryname==	"CÃ´te d'Ivoire "
replace countryname=	"Venezuela, RB"	if countryname==	"Venezuela "
replace countryname=	"Hong Kong SAR, China"	if countryname==	"Hong Kong "
replace countryname=	"Fiji"	if countryname==	"Fiji "
replace countryname=	"Iraq"	if countryname==	"Iraq "
replace countryname=	"Mali"	if countryname==	"Mali "
replace countryname=	"Oman"	if countryname==	"Oman "
replace countryname=	"Peru"	if countryname==	"Peru "
replace countryname=	"Togo"	if countryname==	"Togo "
replace countryname=	"Aruba"	if countryname==	"Aruba "
replace countryname=	"Benin"	if countryname==	"Benin "
replace countryname=	"Chile"	if countryname==	"Chile "
replace countryname=	"Gabon"	if countryname==	"Gabon "
replace countryname=	"Ghana"	if countryname==	"Ghana "
replace countryname=	"Haiti"	if countryname==	"Haiti "
replace countryname=	"India"	if countryname==	"India "
replace countryname=	"Italy"	if countryname==	"Italy "
replace countryname=	"Japan"	if countryname==	"Japan "
replace countryname=	"Kenya"	if countryname==	"Kenya "
replace countryname=	"Libya"	if countryname==	"Libya "
replace countryname=	"Malta"	if countryname==	"Malta "
replace countryname=	"Nepal"	if countryname==	"Nepal "
replace countryname=	"Niger"	if countryname==	"Niger "
replace countryname=	"Qatar"	if countryname==	"Qatar "
replace countryname=	"Spain"	if countryname==	"Spain "
replace countryname=	"Angola"	if countryname==	"Angola "
replace countryname=	"Belize"	if countryname==	"Belize "
replace countryname=	"Brazil"	if countryname==	"Brazil "
replace countryname=	"Canada"	if countryname==	"Canada "
replace countryname=	"France"	if countryname==	"France "
replace countryname=	"Greece"	if countryname==	"Greece "
replace countryname=	"Israel"	if countryname==	"Israel "
replace countryname=	"Jordan"	if countryname==	"Jordan "
replace countryname=	"Kuwait"	if countryname==	"Kuwait "
replace countryname=	"Latvia"	if countryname==	"Latvia "
replace countryname=	"Mexico"	if countryname==	"Mexico "
replace countryname=	"Norway"	if countryname==	"Norway "
replace countryname=	"Panama"	if countryname==	"Panama "
replace countryname=	"Poland"	if countryname==	"Poland "
replace countryname=	"Rwanda"	if countryname==	"Rwanda "
replace countryname=	"Sweden"	if countryname==	"Sweden "
replace countryname=	"Turkey"	if countryname==	"Turkey "
replace countryname=	"Uganda"	if countryname==	"Uganda "
replace countryname=	"Zambia"	if countryname==	"Zambia "
replace countryname=	"Austria"	if countryname==	"Austria "
replace countryname=	"Bahrain"	if countryname==	"Bahrain "
replace countryname=	"Belarus"	if countryname==	"Belarus "
replace countryname=	"Belgium"	if countryname==	"Belgium "
replace countryname=	"Bolivia"	if countryname==	"Bolivia "
replace countryname=	"Croatia"	if countryname==	"Croatia "
replace countryname=	"Denmark"	if countryname==	"Denmark "
replace countryname=	"Ecuador"	if countryname==	"Ecuador "
replace countryname=	"Estonia"	if countryname==	"Estonia "
replace countryname=	"Finland"	if countryname==	"Finland "
replace countryname=	"Georgia"	if countryname==	"Georgia "
replace countryname=	"Germany"	if countryname==	"Germany "
replace countryname=	"Hungary"	if countryname==	"Hungary "
replace countryname=	"Ireland"	if countryname==	"Ireland "
replace countryname=	"Jamaica"	if countryname==	"Jamaica "
replace countryname=	"Lebanon"	if countryname==	"Lebanon "
replace countryname=	"Moldova"	if countryname==	"Moldova "
replace countryname=	"Namibia"	if countryname==	"Namibia "
replace countryname=	"Nigeria"	if countryname==	"Nigeria "
replace countryname=	"Romania"	if countryname==	"Romania "
replace countryname=	"Senegal"	if countryname==	"Senegal "
replace countryname=	"Uruguay"	if countryname==	"Uruguay "
replace countryname=	"Vietnam"	if countryname==	"Vietnam "
replace countryname=	"Barbados"	if countryname==	"Barbados "
replace countryname=	"Botswana"	if countryname==	"Botswana "
replace countryname=	"Bulgaria"	if countryname==	"Bulgaria "
replace countryname=	"Cambodia"	if countryname==	"Cambodia "
replace countryname=	"Cameroon"	if countryname==	"Cameroon "
replace countryname=	"Colombia"	if countryname==	"Colombia "
replace countryname=	"Honduras"	if countryname==	"Honduras "
replace countryname=	"Malaysia"	if countryname==	"Malaysia "
replace countryname=	"Mongolia"	if countryname==	"Mongolia "
replace countryname=	"Pakistan"	if countryname==	"Pakistan "
replace countryname=	"Paraguay"	if countryname==	"Paraguay "
replace countryname=	"Portugal"	if countryname==	"Portugal "
replace countryname=	"Slovenia"	if countryname==	"Slovenia "
replace countryname=	"Thailand"	if countryname==	"Thailand "
replace countryname=	"Zimbabwe"	if countryname==	"Zimbabwe "
replace countryname=	"Argentina"	if countryname==	"Argentina "
replace countryname=	"Australia"	if countryname==	"Australia "
replace countryname=	"Guatemala"	if countryname==	"Guatemala "
replace countryname=	"Indonesia"	if countryname==	"Indonesia "
replace countryname=	"Lithuania"	if countryname==	"Lithuania "
replace countryname=	"Mauritius"	if countryname==	"Mauritius "
replace countryname=	"Nicaragua"	if countryname==	"Nicaragua "
replace countryname=	"Singapore"	if countryname==	"Singapore "
replace countryname=	"Sri Lanka"	if countryname==	"Sri Lanka "
replace countryname=	"Bangladesh"	if countryname==	"Bangladesh "
replace countryname=	"Kazakhstan"	if countryname==	"Kazakhstan "
replace countryname=	"Luxembourg"	if countryname==	"Luxembourg "
replace countryname=	"Mozambique"	if countryname==	"Mozambique "
replace countryname=	"Tajikistan"	if countryname==	"Tajikistan "
replace countryname=	"Tanzania"	if countryname==	"Tanzania "
replace countryname=	"El Salvador"	if countryname==	"El Salvador "
replace countryname=	"Netherlands"	if countryname==	"Netherlands "
replace countryname=	"New Zealand"	if countryname==	"New Zealand "
replace countryname=	"Philippines"	if countryname==	"Philippines "
replace countryname=	"Switzerland"	if countryname==	"Switzerland "
replace countryname=	"Burkina Faso"	if countryname==	"Burkina Faso "
replace countryname=	"Saudi Arabia"	if countryname==	"Saudi Arabia "
replace countryname=	"South Africa"	if countryname==	"South Africa "
replace countryname=	"Afghanistan"	if countryname==	"Afghanistan "
replace countryname=	"Costa Rica"	if countryname==	"Costa Rica "
replace countryname=	"United Kingdom"	if countryname==	"United Kingdom "
replace countryname=	"Puerto Rico"	if countryname==	"Puerto Rico "
replace countryname=	"North Macedonia"	if countryname==	"North Macedonia "
replace countryname=	"United States"	if countryname==	"United States "
replace countryname=	"Papua New Guinea"	if countryname==	"Papua New Guinea "
replace countryname=	"Dominican Republic"	if countryname==	"Dominican Republic "
replace countryname=	"Trinidad and Tobago"	if countryname==	"Trinidad and Tobago "
replace countryname=	"Antigua and Barbuda"	if countryname==	"Antigua and Barbuda "
replace countryname=	"United Arab Emirates"	if countryname==	"United Arab Emirates "
replace countryname=	"Bosnia and Herzegovina"	if countryname==	"Bosnia and Herzegovina "
replace countryname=	"Guinea-Bissau"	if countryname==	"Guinea-Bissau"
replace countryname=	"Liechtenstein"	if countryname==	"Liechtenstein"
replace countryname= "Egypt, Arab Rep." if regexm(countryname, "Egypt")
replace countryname= "Slovak Republic" if regexm(countryname,"Slovakia")
replace countryname= "Korea, Rep." if  regexm(countryname, "South Korea")
replace countryname="Czech Republic" if regexm(countryname,"Czechia")
replace countryname="Kyrgyz Republic" if regexm(countryname,"Kyrgyzstan")
replace countryname= "Lao PDR" if regexm(countryname,"Laos")
replace countryname="Taiwan" if regexm(countryname,"Taiwan")
tempfile  mobility
save `mobility', replace 

*mencari variabel kontrol



/*-----------------------------------------------------------------------------
dictionary data 
-------------------------------------------------------------------------------
*education 
SP.URB.TOTL.IN.ZS - Urban population (% of total)
SE.TER.ENRR - School enrollment, tertiary (% gross)
SE.PRM.ENRR - School enrollment, primary (% gross)
SE.SEC.ENRR - School enrollment, secondary (% gross)
*land size 
AG.LND.TOTL.K2 - Land area (sq. km)
AG.LND.TOTL.UR.K2 - Urban land area (sq. km)
*labour
SL.AGR.EMPL.ZS - Employment in agriculture (% of total employment) (modeled ILO estimate)
SL.IND.EMPL.ZS - Employment in industry (% of total employment) (modeled ILO estimate)
SL.SRV.EMPL.ZS - Employment in services (% of total employment) (modeled ILO estimate)
SL.ISV.IFRM.ZS - Informal employment (% of total non-agricultural employment)

*population

EN.POP.DNST - Population density (people per sq. km of land area)
NY.GDP.MKTP.KD - GDP (constant 2010 US$
SP.POP.TOTL - Population, total
NY.GDP.MKTP.KD.ZG - GDP growth (annual %)
NY.GDP.PCAP.KD - GDP per capita (constant 2010 US$)
-------------------------------------------------------------------------------*/
/*
wbopendata, language(en - English) country() topics() indicator(  NY.GDP.MKTP.KD - GDP (constant 2010 US$)) clear


forvalue xi=1960/2019{
ren yr`xi' NY_GDP_MKTP_KD`xi'

 
}
forvalue xi=1960/2019{
gen  lNY_GDP_MKTP_KD`xi'=ln(NY_GDP_MKTP_KD`xi')

 
}

tempfile data0
save `data0', replace

wbopendata, language(en - English) country() topics() indicator(  SP.POP.TOTL - Population, total ) clear

forvalue xi=1960/2019{
ren yr`xi' SP_POP_TOTL`xi'

}


forvalue xi=1960/2019{
gen  lSP_POP_TOTL`xi'=ln(SP_POP_TOTL`xi')

}
tempfile data1
save `data1', replace

wbopendata, language(en - English) country() topics() indicator( NY.GDP.MKTP.KD.ZG - GDP growth (annual %) ) clear

forvalue xi=1960/2019{
ren yr`xi' NY_GDP_MKTP_KD_ZG`xi'

}
tempfile data2
save `data2', replace

wbopendata, language(en - English) country() topics() indicator(  NY.GDP.PCAP.KD - GDP per capita (constant 2010 US$) ) clear

forvalue xi=1960/2019{
ren yr`xi'  NY_GDP_PCAP_KD`xi'

}
forvalue xi=1960/2019{
gen  lNY_GDP_PCAP_KD`xi'=ln(NY_GDP_PCAP_KD`xi')

}

tempfile data3
save `data3', replace

wbopendata, language(en - English) country() topics() indicator(  SP.URB.TOTL.IN.ZS - Urban population (% of total) ) clear

forvalue xi=1960/2019{
ren yr`xi'  SP_URB_TOTL_IN_ZS`xi'

}
forvalue xi=1960/2019{
gen  lSP_URB_TOTL_IN_ZS`xi'=ln(SP_URB_TOTL_IN_ZS`xi')

}

tempfile data4
save `data4', replace
wbopendata, language(en - English) country() topics() indicator(  SE.TER.ENRR - School enrollment, tertiary (% gross) ) clear
forvalue xi=1960/2019{
ren yr`xi'  SE_TER_ENRR`xi'

}

tempfile data5
save `data5', replace
wbopendata, language(en - English) country() topics() indicator(  SE.PRM.ENRR - School enrollment, primary (% gross)) clear

forvalue xi=1960/2019{
ren yr`xi'   SE_PRM_ENRR`xi'

}


tempfile data6
save `data6', replace

wbopendata, language(en - English) country() topics() indicator(  SE.SEC.ENRR - School enrollment, secondary (% gross)) clear

forvalue xi=1960/2019{
ren yr`xi'   SE_SEC_ENRR`xi'

}

tempfile data7
save `data7', replace

wbopendata, language(en - English) country() topics() indicator(   AG.LND.TOTL.K2 - Land area (sq. km)) clear

forvalue xi=1960/2019{
ren yr`xi'   AG_LND_TOTL_K2`xi'

}
forvalue xi=1960/2019{
gen  lAG_LND_TOTL_K2`xi'=ln(AG_LND_TOTL_K2`xi')

}

tempfile data8
save `data8', replace


wbopendata, language(en - English) country() topics() indicator(  AG.LND.TOTL.UR.K2 - Urban land area (sq. km)) clear

forvalue xi=1960/2019{
ren yr`xi'   AG_LND_TOTL_UR_K2`xi'

}
forvalue xi=1960/2019{
gen  lAG_LND_TOTL_UR_K2`xi'=ln(AG_LND_TOTL_UR_K2`xi')

}


tempfile data9
save `data9', replace


wbopendata, language(en - English) country() topics() indicator(  SL.AGR.EMPL.ZS - Employment in agriculture (% of total employment) (modeled ILO estimate)) clear

forvalue xi=1960/2019{
ren yr`xi'   SL_AGR_EMPL_ZS`xi'

}


tempfile data10
save `data10', replace

wbopendata, language(en - English) country() topics() indicator(SL.IND.EMPL.ZS - Employment in industry (% of total employment) (modeled ILO estimate)) clear


forvalue xi=1960/2019{
ren yr`xi'   SL_IND_EMPL_ZS`xi'

}

tempfile data11
save `data11', replace


wbopendata, language(en - English) country() topics() indicator(SL.SRV.EMPL.ZS - Employment in services (% of total employment) (modeled ILO estimate)) clear

forvalue xi=1960/2019{
ren yr`xi'   SL_SRV_EMPL_ZS`xi'

}
tempfile data12
save `data12', replace



wbopendata, language(en - English) country() topics() indicator(SL.ISV.IFRM.ZS - Informal employment (% of total non-agricultural employment)) clear

forvalue xi=1960/2019{
ren yr`xi'   SL_ISV_IFRM_ZS`xi'

}

tempfile data13
save `data13', replace



wbopendata, language(en - English) country() topics() indicator(EN.POP.DNST - Population density (people per sq. km of land area)) clear

forvalue xi=1960/2019{
ren yr`xi'   EN_POP_DNST`xi'

}

tempfile data14
save `data14', replace



forvalue cf=0/14{

merge 1:1 countrycode using `data`cf''
drop _m
}

drop if regionname=="Aggregates"
save $data\wdi_7april2020, replace
*/

use "time_series_covid19_confirmed_global.dta", clear
ren deaths confirmed 
tempfile time_series_covid19_confirmed
save `time_series_covid19_confirmed', replace 
use time_series_covid19_recovered_global, clear
ren deaths recover
tempfile time_series_covid19_recovered
save `time_series_covid19_recovered', replace 
use time_series_covid19_deaths_global, clear 

merge 1:1 location_str date  using `time_series_covid19_confirmed'
drop _m
merge 1:1 location_str date using `time_series_covid19_recovered'
keep if _m==3
drop _m


foreach k in confirmed deaths recover{
bys countryregion date : egen data`k'=sum(`k')

}


ren countryregion CountryRegion
drop provincestate


replace CountryRegion=	"Myanmar"	if regexm(CountryRegion, "Burma") 
replace CountryRegion="Bahamas, The" if regexm(CountryRegion, "Bahamas")
replace CountryRegion="China" if regexm(CountryRegion,"China" )
replace CountryRegion="Brunei Darussalam" if CountryRegion=="Brunei" 
replace CountryRegion="Egypt, Arab Rep." if CountryRegion=="Egypt" 
replace CountryRegion="Iran, Islamic Rep." if CountryRegion=="Iran" 
replace CountryRegion="Hong Kong SAR, China" if regexm(CountryRegion,"Hong Kong" )
replace CountryRegion="Macao SAR, China" if regexm(CountryRegion,"Macao" )
replace CountryRegion="Slovak Republic" if CountryRegion=="Slovakia" 
replace CountryRegion="Russian Federation" if CountryRegion=="Russia" 
replace CountryRegion="St. Martin (French part)" if CountryRegion=="St. Martin" 
replace CountryRegion="United Kingdom" if regexm(CountryRegion,"Kingdom") 
replace CountryRegion="United States" if CountryRegion=="US" 
replace CountryRegion="Korea, Rep." if CountryRegion=="Korea, South"
replace CountryRegion="Gambia, The" if CountryRegion=="The Gambia"
replace CountryRegion="Congo, Rep." if CountryRegion=="Congo (Brazzaville)"
replace CountryRegion="Congo, Dem. Rep." if CountryRegion=="Congo (Kinshasa)"
replace  CountryRegion="Czech Republic" if  CountryRegion== "Czechia"
replace CountryRegion="St. Lucia" if CountryRegion== "Saint Lucia"
replace CountryRegion= "St. Vincent and the Grenadines" if CountryRegion=="Saint Vincent and the Grenadines"
replace  CountryRegion="Bahamas, The" if CountryRegion== "The Bahamas"   
replace CountryRegion="Venezuela, RB" if CountryRegion== "Venezuela"
replace CountryRegion="Kyrgyz Republic" if regexm(CountryRegion,"Kyrgyzstan")
replace CountryRegion="Taiwan" if CountryRegion== "Taiwan*"
replace CountryRegion="Lao PDR" if regexm(CountryRegion,"Laos")


ren CountryRegion countryname


 /*
   
   
                         Country/Region |      Freq.     Percent        Cum.
----------------------------------------+-----------------------------------
                    Congo (Brazzaville) |         56        6.67        6.67
                       Congo (Kinshasa) |         56        6.67       13.33
                            Cruise Ship |         56        6.67       20.00
                                Czechia |         56        6.67       26.67
                               Guernsey |         56        6.67       33.33
                               Holy See |         56        6.67       40.00
                                 Jersey |         56        6.67       46.67
                           Korea, South |         56        6.67       53.33
                             Martinique |         56        6.67       60.00
                            Saint Lucia |         56        6.67       66.67
       Saint Vincent and the Grenadines |         56        6.67       73.33
                                Taiwan* |         56        6.67       80.00
                            The Bahamas |         56        6.67       86.67
                             The Gambia |         56        6.67       93.33
                              Venezuela |         56        6.67      100.00
----------------------------------------+-----------------------------------
                                  Total |        840      100.00


								 */




drop latitude longitude  deaths dow location_str location confirmed recover
tempfile data_corona

save `data_corona', replace




keep  if date==td(29mar2020)
duplicates drop countryname , force
for var _all: ren X X_29march
ren countryname_29march countryname
tempfile data_corona_29
save `data_corona_29', replace
use `data_corona', clear 
keep  if date==td(2mar2020)
for var _all: ren X X_2march
ren countryname_2march countryname
duplicates drop countryname , force
tempfile data_corona_2
save `data_corona_2', replace

import excel "D:\mobility\WPP2019_POP_F05_MEDIAN_AGE.xlsx", sheet("ESTIMATES") cellrange(A17:V272) firstrow clear
tempfile age_median
save `age_median', replace
import excel "D:\mobility\WPP2019_POP_F06_POPULATION_DENSITY.xlsx", sheet("ESTIMATES") cellrange(A17:BZ306) firstrow clear
tempfile pop_density
save `pop_density', replace
import excel "D:\mobility\WPP2019_POP_F12_B_CHILD_DEPENDENCY_RATIO_2064.xlsx", sheet("ESTIMATES") cellrange(A17:V272) firstrow clear
tempfile child_dep
save `child_dep', replace
import excel "D:\mobility\WPP2019_POP_F13_B_OLD_AGE_DEPENDENCY_RATIO_2064.xlsx", sheet("ESTIMATES") cellrange(A17:V272) firstrow clear
tempfile old_age
save `old_age', replace
merge 1:1 Countrycode using `age_median'
drop _m
merge 1:1 Countrycode using `pop_density'
drop _m
merge 1:1 Countrycode using `child_dep'
drop _m
ren Regionsubregioncountryorar countryname
tempfile wpp

replace countryname="Slovak Republic" if regexm(countryname, "Slovakia")
replace countryname="Moldova" if regexm(countryname, "Republic of Moldova")
replace countryname="Tanzania" if regexm(countryname, "United Republic of Tanzania")
replace countryname="Vietnam" if regexm(countryname, "Viet Nam")
replace countryname="Yemen, Rep." if regexm(countryname, "Yemen")
replace countryname="Bahamas, The" if regexm(countryname, "Bahamas")
replace countryname="United States" if regexm(countryname, "United States of America")
replace countryname="Cote d'Ivoire" if regexm(countryname, "Côte d'Ivoire")
replace countryname="Hong Kong SAR, China" if regexm(countryname, "China, Hong Kong SAR")

  
  /*
  
                            countryname |      Freq.     Percent        Cum.
----------------------------------------+-----------------------------------
                                Bolivia |          1       12.50       12.50
                         Czech Republic |          1       12.50       25.00
                       Egypt, Arab Rep. |          1       12.50       37.50
                            Korea, Rep. |          1       12.50       50.00
                        Kyrgyz Republic |          1       12.50       62.50
                                Lao PDR |          1       12.50       75.00
                                 Taiwan |          1       12.50       87.50
                          Venezuela, RB |          1       12.50      100.00
----------------------------------------+-----------------------------------
                                  Total |          8      100.00
*/
replace countryname="Bolivia" if countryname=="Bolivia (Plurinational State of)"

replace countryname="Czech Republic" if regexm(countryname, "Czechia")
replace countryname="Egypt, Arab Rep." if regexm(countryname, "Egypt")
replace countryname="Korea, Rep." if countryname== "Republic of Korea"
 replace countryname="Kyrgyz Republic" if regexm(countryname, "Kyrgyzstan")
 replace countryname="Lao PDR" if regexm(countryname, "Lao People's Democratic Republic")
 replace countryname="Taiwan" if regexm(countryname, "China, Taiwan Province of China")
 replace countryname="Venezuela, RB" if countryname=="Venezuela (Bolivarian Republic of)"

 

 

save `wpp', replace

import excel "D:\mobility\world giving index 17 April.xlsx", sheet("Sheet1") firstrow clear
tempfile wgi
save `wgi', replace

use `mobility', clear 

merge 1:1 countryname using `data_corona_29'
drop  if _m==2
drop _m

merge 1:1 countryname using `data_corona_2'
drop  if _m==2
drop _m

merge 1:1 countryname using $data\wdi_7april2020

drop  if _m==2
drop _m



/*

 tab countryname if _m==1

                            countryname |      Freq.     Percent        Cum.
----------------------------------------+-----------------------------------
                                  Aruba |          1       14.29       14.29
                                 Canada |          1       14.29       28.57
                   Hong Kong SAR, China |          1       14.29       42.86
                            Puerto Rico |          1       14.29       57.14
                                Réunion |          1       14.29       71.43
                             Tajikistan |          1       14.29       85.71
                            Yemen, Rep. |          1       14.29      100.00
----------------------------------------+-----------------------------------
                                  Total |          7      100.00

*/
								  

tempfile database
merge 1:1 countryname using `wpp'
drop  if _m==2
drop _m
merge 1:1 countryname using `wgi'
drop  if _m==2
drop _m


/*
foreach y in retail_recreation grocery_pharmacy park transit_station workplace residential{


gen pen`y'= `y'*-1 if `y'>0
replace `y'=abs(`y')
replace pen`y'=`y' if pen`y'==.



                            countryname |      Freq.     Percent        Cum.
----------------------------------------+-----------------------------------
                                Albania |          1        3.57        3.57
                                Armenia |          1        3.57        7.14
                             Azerbaijan |          1        3.57       10.71
                                   Chad |          1        3.57       14.29
                                  China |          1        3.57       17.86
                    Congo (Brazzaville) |          1        3.57       21.43
                                 Cyprus |          1        3.57       25.00
       Democratic Republic of the Congo |          1        3.57       28.57
                               EthiOQia |          1        3.57       32.14
                                 Guinea |          1        3.57       35.71
                                   Iran |          1        3.57       39.29
                                 Kosovo |          1        3.57       42.86
                             Kyrgyzstan |          1        3.57       46.43
                                Liberia |          1        3.57       50.00
                             Madagascar |          1        3.57       53.57
                                 Malawi |          1        3.57       57.14
                             Montenegro |          1        3.57       60.71
                                Morocco |          1        3.57       64.29
                      ReQublic of Korea |          1        3.57       67.86
                     Russian Federation |          1        3.57       71.43
                                 Serbia |          1        3.57       75.00
                           Sierra Leone |          1        3.57       78.57
                     State of Palestine |          1        3.57       82.14
              Taiwan, Province of China |          1        3.57       85.71
                                Tunisia |          1        3.57       89.29
                           Turkmenistan |          1        3.57       92.86
                                Ukraine |          1        3.57       96.43
                             Uzbekistan |          1        3.57      100.00
----------------------------------------+-----------------------------------
                                  Total |         28      100.00

. 
. 

}
*/


forvalue K=1960/2019{



la var SP_URB_TOTL_IN_ZS`K' "Urban population (% of total) year `K'"
la var lSP_URB_TOTL_IN_ZS`K' "log Urban population (% of total) year `K'"
la var SE_TER_ENRR`K' "School enrollment, tertiary (% gross) year `K'"
la var SE_PRM_ENRR`K' "School enrollment, primary (% gross)year `K'"
la var SE_SEC_ENRR`K' "School enrollment, secondary (% gross) year `K'"
*land size 
la var AG_LND_TOTL_K2`K' "Land area (sq_ km) year `K'"
la var lAG_LND_TOTL_K2`K' "log Land area (sq_ km) year `K'"
la var AG_LND_TOTL_UR_K2`K' "Urban land area (sq_ km) year `K'"
la var lAG_LND_TOTL_UR_K2`K' "log Urban land area (sq_ km) year `K'"
*labour
la var SL_AGR_EMPL_ZS`K' "Employment in agriculture (% of total employment) (modeled ILO estimate) year `K'"
la var SL_IND_EMPL_ZS`K' "Employment in industry (% of total employment) (modeled ILO estimate)year `K'"
la var SL_SRV_EMPL_ZS`K' "Employment in services (% of total employment) (modeled ILO estimate) year `K'"
la var SL_ISV_IFRM_ZS`K' "Informal employment (% of total nonagricultural employment) year `K'"

*population

la var EN_POP_DNST`K' "Population density (people per sq_ km of land area) year `K'"
la var NY_GDP_MKTP_KD`K' "GDP (constant 2010 US$  year `K'"
la var SP_POP_TOTL`K' "Population, total  year `K'"
la var NY_GDP_MKTP_KD_ZG`K' "GDP growth (annual %)  year `K'"
la var NY_GDP_PCAP_KD`K' "GDP per capita (constant 2010 US$)  year `K'"
la var lNY_GDP_MKTP_KD`K' "log GDP (constant 2010 US$  year `K'"
la var lSP_POP_TOTL`K' "log Population, total  year `K'"
la var lNY_GDP_PCAP_KD`K' "log GDP per capita (constant 2010 US$)  year `K'"
}



save Database_moobility_17_Arpril_2020, replace
