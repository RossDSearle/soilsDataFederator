library(RSQLite)
library(DBI)
library(stringr)

gitRoot <- 'C:/Users/sea084/Dropbox/RossRCode/Git/soilsDataFederator'
dataRoot <- 'C:/Projects/TernLandscapes/Site Data'


dbPath <- paste0(gitRoot, "/DB/soilsFederator.sqlite")
con <- dbConnect(RSQLite::SQLite(), dbPath)
dbDisconnect(con)


dbListTables(con)



allInfo <- fromJSON("http://144.6.225.21/ross" )
allDFs <- allInfo[order(allInfo$site_location_name, allInfo$site_location_visit_id, allInfo$upper_depth),]
nrow(allInfo)

unique(allInfo$observed_property)
length(unique(allInfo$site_location_name))
length(unique(siteDF$site_location_name))


df <- data.frame(Organisation='TERN_Surveillance', ObservedProperty=unique(allInfo$observed_property), labMcode='NA')
write.csv(df, paste0(gitRoot, '/DataMassage/TERNSurveillance/PropertyMappings.csv'))




