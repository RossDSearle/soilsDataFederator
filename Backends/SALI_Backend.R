library(httr)
library(jsonlite)
library(RCurl)


                           
# labresults <- fromJSON(paste0("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?%24filter=ProjectCode%20eq%20'3MC' and labMethodCode eq '3A1'&%24orderby=SiteId"))
# 
# samples <- fromJSON(paste0("https://soil-chem.information.qld.gov.au/odata/Samples?%24filter=ProjectCode%20eq%20'3MC'&%24orderby=SiteId"))
# 
# 
# 
# 
# testvals <- fromJSON(URLencode("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?%24filter=ProjectCode%20eq%20%273MC%27%20and%20LabMethodCode%20eq%20%273A1%27"))
# 
# 
# testvals <- fromJSON(URLencode("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?$filter=ProjectCode eq '3MC' and LabMethodCode eq '3A1'"))
# 
# testvals <- fromJSON(URLencode("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?$filter=LabMethodCode eq '3A1'"))
# testvals <- fromJSON(URLencode("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?$filter=LABM_SHORT_NAME eq 'Clay'"))
# nrow(testvals)
# head(testvals)






# propertyType <- PropertyTypes$LabMethod
# observedProperty <- '3A1'




getData_QLDGovernment <- function(propertyType, observedProperty ){
  
  OrgName <- 'QLDGovernment'
  print(paste0('Extracting data from ', OrgName))
  
  # allInfo <- fromJSON("http://144.6.225.21/ross" )
  # allDFs <- allInfo[order(allInfo$site_location_name, allInfo$site_location_visit_id, allInfo$upper_depth),]
  # 
  # df <- data.frame(Organisation='TERN_Surveillance', ObservedProperty=unique(allInfo$observed_property), labMcode='NA')
  # 
  # mappings <- na.omit(read.csv(paste0(projectRoot,'/Mappings/TERNSurveillance_PropertyMappings.csv')))
  # 
  
  samples <- fromJSON(paste0("https://soil-chem.information.qld.gov.au/odata/Samples"))
  
  con <- dbConnect(RSQLite::SQLite(), dbPathSoilsFed)
  
  if(str_to_lower(propertyType) == str_to_lower(PropertyTypes$LabMethod)){
    
    sd <- fromJSON(URLencode(paste0("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?$filter=LabMethodCode eq '", observedProperty, "'")))
    
    sAll <- merge(sd, samples,  by=c("projectCode","siteId", "observationNumber", "sampleNumber"), all.x = T)
    sql <- paste0("Select * from LabMethods where LABM_CODE = '", observedProperty, "'")
    method = doQuery(con, sql)
    units <- method$LABM_UNITS
    
    outDF <- data.frame(Organisation=OrgName, Observation_ID=paste0(sAll$projectCode, '_', sAll$siteId, '_', sAll$observationNumber), SampleID=sAll$sampleNumber,
                        Date=sAll$analysisDate, Longitude=sAll$longitude, Latitude= sAll$latitude,
                        UpperDepth=sAll$upperDepth, LowerDepth=sAll$lowerDepth, DataType=propertyType, ObservedProperty=observedProperty, Value=sAll$formattedValue, Units= units)
    oOutDF <- outDF[order(outDF$Observation_ID, outDF$UpperDepth),]
    head(oOutDF)
   
  }else if(str_to_lower(propertyType) == 'labgroup'){
    
   
    sql <- paste0("Select * from LabMethods where LABP_CODE = '", observedProperty, "'")
    methods = doQuery(con, sql)
    
    nativeProp <- mappings[mappings$labMcode %in% methods$LABM_CODE, ]
    fdf <- na.omit(allInfo[allInfo$observed_property %in% nativeProp$ObservedProperty, ])
    
  }else if(str_to_lower(propertyType) == 'Morphology'){
    
    nativeProp <- mappings[mappings$labMcode == OP, ]
    fdf <- na.omit(allInfo[allInfo$observed_property == nativeProp$ObservedProperty, ])
    units <- 'None'
  }
  
  dbDisconnect(con)
 
  return(oOutDF)
}



