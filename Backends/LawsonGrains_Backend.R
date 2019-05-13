library(readxl)
library(stringr)


getLGMethod <- function(methods, mappings){
  meths <- character()
  for (i in 1:nrow(mappings)) {
    if(str_to_upper(mappings$ObservedProperty[i]) %in% str_to_upper(methods$Property) ){
      nativeProp <- mappings[i,]
      meths <- c(meths, nativeProp$OrigPropertyCode)
    }
  }
  return(meths)
}

#propertyType='h_texture'
observedProperty='4A1;4b1'
observedPropertyGroup='PH'

getData_LawsonGrains <- function( observedProperty=NULL, observedPropertyGroup=NULL ){
  
  OrgName <- 'LawsonGrains'
  print(paste0('Extracting data from ', OrgName))
  
  locsUrl <- 'http://esoil.io/SoilsFederator/Providers/LawsonGrains/all_Locs.xlsx'
  dataUrl <- 'http://esoil.io/SoilsFederator/Providers/LawsonGrains/LawsonSoils.xlsx'
  
  p1f <- tempfile()
  download.file(locsUrl, p1f, mode="wb", quiet = T)
  locs<-read_excel(path = p1f)
  
  p2f <- tempfile()
  download.file(dataUrl, p2f, mode="wb", quiet = T)
  lg <- read_excel(path = p2f)
  
  mappings <- na.omit(read.csv(paste0(paste0(projectRoot,'/Mappings/LawsonGrains_PropertyMappings.csv')), stringsAsFactors = F))
  
if(!is.null(observedPropertyGroup)){
    
    sql <- paste0("Select * from Properties where PropertyGroup = '", observedPropertyGroup, "' COLLATE NOCASE")
    methods = doQueryFromFed(sql)
    nativeProps <- getLGMethod(methods, mappings)
  }else{
    
    bits <- str_split(observedProperty, ';')
    recs <- bits[[1]]
    
    meths <- character()
    for (i in 1:nrow(mappings)) {
      if(str_to_upper(mappings$ObservedProperty[i]) %in% str_to_upper(recs) ){
        nativeProp <- mappings[i,]
        meths <- c(meths, nativeProp$OrigPropertyCode)
      }
    }
    nativeProps <- meths
  }
  

if(length(nativeProp) == 0){
      return(blankResponseDF())
}
  
  cDF <- blankResponseDF()
  
  for (i in 1:length(nativeProps)) {
    
    prop <- mappings[mappings$OrigPropertyCode == nativeProps[i], ]$ObservedProperty
    
    sd <- merge(lg, locs,  by.x=c("Sample No."),by.y=c("Site ID"), all.x = T)
    
    bits <- str_split(sd$Depth, '-')
    ud <- as.numeric(str_trim(sapply(bits, function (x) x[1])))
    ld <- as.numeric(str_trim(sapply(bits, function (x) x[2])))
    
    sd$`Lab Number`[is.na(sd$`Lab Number`)] <- "1"
    
    fdf <- data.frame(sd$Aggregation, sd$Year, sd$`Sample No.`, sd$`Lab Number`, ud, ld, sd[, nativeProps[i]], sd$Lat, sd$Lon)
    colnames(fdf) <- c('Aggregation', 'Year',  'SampleNo', 'LabNumber', 'ud', 'ld', 'Value', 'Lat', 'Lon')
   
    propertyType <- getPropertyType(prop)
   if(str_to_lower(propertyType) == str_to_lower(PropertyTypes$LaboratoryMeasurement)){
    sql <- paste0("Select * from LabMethods where LABM_CODE = '", prop, "' COLLATE NOCASE")
    method = doQueryFromFed(sql)
    units <- method$LABM_UNITS
    }else{
      units = 'NA'
    }

    oOutDF <- generateResponseDF(OrgName, paste0(fdf$Aggregation , '_', fdf$SampleNo ), fdf$LabNumber, fdf$Year, fdf$Lon, fdf$Lat, fdf$ud, fdf$ld, propertyType, prop, fdf$Value, units)
    cDF<- rbind(cDF, oOutDF)
  }
  
   return(cDF)
}
