

library(httr)
library(jsonlite)
library(RCurl)


                           
labresults <- fromJSON(paste0("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?%24filter=ProjectCode%20eq%20'3MC' and labMethodCode eq '3A1'&%24orderby=SiteId"))

samples <- fromJSON(paste0("https://soil-chem.information.qld.gov.au/odata/Samples?%24filter=ProjectCode%20eq%20'3MC'&%24orderby=SiteId"))




testvals <- fromJSON(URLencode("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?%24filter=ProjectCode%20eq%20%273MC%27%20and%20LabMethodCode%20eq%20%273A1%27"))


testvals <- fromJSON(URLencode("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?$filter=ProjectCode eq '3MC' and LabMethodCode eq '3A1'"))

testvals <- fromJSON(URLencode("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?$filter=LabMethodCode eq '3A1'"))
testvals <- fromJSON(URLencode("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?$filter=LABM_SHORT_NAME eq 'Clay'"))
nrow(testvals)
head(testvals)



