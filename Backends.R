library(RSQLite)
library(DBI)
library(stringr)

gitRoot <- 'C:/Users/sea084/Dropbox/RossRCode/Git'
dataRoot <- 'C:/Projects/TernLandscapes/Site Data'

source(paste0(gitRoot, '/AusSoilsDSM/SLGA/Production/NSSC/NSSCHelpers.R'))
#source(paste0('C:/Users/sea084/Dropbox/RossRCode/myFunctions/VectorUtils.R'))

#aust <-  readShapeFile('C:/Projects/GIS/National/Boundaries/AustGen.shp')


dbPath <- paste0(dataRoot, "/NSSC_2.0.0.sqlite")
Litecon <- dbConnect(RSQLite::SQLite(), dbPath)
dbListTables(Litecon)


sql <- "SELECT * from LAB_METHODS"


res <- doQuery(Litecon, sql)
head(res)
nrow(res)
write.csv(res, paste0(dataRoot, '/labResults.csv'))
