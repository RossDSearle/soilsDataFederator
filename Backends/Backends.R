library(RSQLite)
library(DBI)
library(stringr)


projectRoot <- 'C:/Users/sea084/Dropbox/RossRCode/Git/soilsDataFederator'
#dataRoot <- 'C:/Projects/TernLandscapes/Site Data'
dbPathSoilsFed <- paste0(projectRoot, "/DB/soilsFederator.sqlite")

source(paste0(projectRoot, '/NSSC/NSSCHelpers.R'))

source(paste0(projectRoot, '/Backends/TERNSurveillance_Backend.R'))
source(paste0(projectRoot, '/Backends/SALI_Backend.R'))
source(paste0(projectRoot, '/Backends/LawsonGrains_Backend.R'))

source(paste0(projectRoot, '/WebAPI/apiEndPoints.R'))


PropertyTypes <- data.frame(LaboratoryMeasurement='LaboratoryMeasurement', FieldMeasurement='FieldMeasurement', stringsAsFactors = F)

generateResponseDF <- function(Provider, Observation_ID, SampleID, Date, Longitude, Latitude, UpperDepth, LowerDepth, DataType, observedProp, Value, Units ){
  
  outDF <- na.omit(data.frame(Provider=OrgName, Observation_ID=paste0(fdf$Aggregation , '_', fdf$SampleNo ), SampleID=fdf$LabNumber , Date=fdf$Year , 
                              Longitude=fdf$Lon , Latitude= fdf$Lat ,
                              UpperDepth=fdf$ud , LowerDepth=fdf$ld , DataType=propertyType, ObservedProperty=observedProp, Value=fdf$Value , Units= units))
  oOutDF <- outDF[order(outDF$Observation_ID, outDF$UpperDepth, outDF$SampleID),]
  return(oOutDF)
}

getSoilData <- function(providers, observedProperty=NULL, observedPropertyGroup=NULL, usr='Public', pwd='Public'){
  
  orgs <- getProviders(activeOnly=T,usr=usr, pwd=pwd)
  
# df1 <- getData_TERNSurveillance(propertyType, observedProperty)
 #df2 <- getData_QLDGovernment(propertyType, observedProperty)
 df3 <- getData_LawsonGrains(observedProperty, observedPropertyGroup)
 #allDf <- rbind(df1, df2)
# allDf <- rbind(df3)
 return(df3)
  
}


usr='ross.searle@csiro.au'
pwd = 'a'

usr='LawsonGrains'
pwd = 'b'

getProviders <- function(activeOnly=T, usr='Public', pwd='Public'){
  

if(usr=='Public'){
  if(activeOnly){
    sql <- paste0("Select * from Providers where Active = 1 and Availability = 'Public'")
  }else{
    sql <- paste0("Select * from Providers where Availability = 'Public'")
  }
  orgs = doQueryFromFed(sql)
  return(orgs)

  }else{
  
  sql <- paste0("SELECT * FROM AuthUsers WHERE usrID = '", usr, "'")
  idRec <- doQueryFromFed(sql)
  
  if(nrow(idRec) != 1){stop('Incorrect user name or password - username actually')}
  
  cusr <- as.character(idRec$usrID[1])
  cpwd <- as.character(idRec$Pwd[1])
  cgrp <- as.character(idRec$GroupName[1])
  
  sql <- paste0("SELECT * FROM AuthAccess WHERE GroupName = '", cgrp, "'")
  accessRecs <- doQueryFromFed(sql)
  
  
  accessList <- accessRecs$access
  
  if(pwd == cpwd){
    
    if(usr == 'Admin'){
      sql <- paste0("Select * from Providers")
      orgs = doQueryFromFed(sql)
      return(orgs)
      
    }else if('All' %in% accessList){
      
      sql <- "SELECT * FROM Sites INNER JOIN Sensors ON Sites.SiteID = Sensors.SiteID"
      orgs = doQueryFromFed(sql)
      
      return(orgs)
    }
    else {
      
      sql <- paste0("Select * from Providers 
        WHERE Availability = 'Public' or ( Availability == 'Private' and OrgName IN ( SELECT access FROM AuthAccess WHERE GroupName = '", cgrp, "'))")
      orgs = doQueryFromFed(sql)
      
      return(orgs)
    }
    stop('Login failed')
  }
  else{
    stop('Incorrect user name or password')
  }
  stop('Login failed')
}
}

getObservedProperties <- function(verbose=F){
  sql <- paste0("Select * from LabMethods")
  methods = doQueryFromFed(sql)
  if(verbose){
    return(methods)
  }else{
    return(methods$LABM_CODE)
  }
  
}

getProperties <- function(PropertyGroup=NULL, verbose=F){
  
  if(is.null(PropertyGroup)){
  sql <- paste0("Select * from Properties")
  }else{
    sql <- paste0("Select * from Properties where PropertyGroup = '", PropertyGroup, "' COLLATE NOCASE")
  }
  props = doQueryFromFed(sql)
  if(verbose){
    return(props)
  }else{
    return(props$Property)
  }
  
}

getPropertyGroups <- function( verbose=F){
    sql <- paste0("Select distinct PropertyGroup, PropertyType from Properties COLLATE NOCASE")
  props = doQueryFromFed(sql)
  return(props)
}
  


blankResponseDF <- function(){
  
  outDF <- na.omit(data.frame(Organisation=NULL, Observation_ID=character(), SampleID=character(), Date=character() , 
                              Longitude=numeric() , Latitude= numeric(),
                              UpperDepth=numeric() , LowerDepth=numeric() , DataType=character(), ObservedProperty=character(), Value=numeric() , Units= character()))
}