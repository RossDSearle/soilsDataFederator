library(RSQLite)
library(DBI)
library(stringr)
library(pdftools)


projectRoot <- 'C:/Users/sea084/Dropbox/RossRCode/Git/soilsDataFederator'
dbPathSoilsFed <- paste0(projectRoot, "/DB/soilsFederator.sqlite")

source(paste0(projectRoot, '/NSSC/NSSCHelpers.R'))

conn <- dbConnect(RSQLite::SQLite(), dbPathSoilsFed)

t <- pdf_text('c:/temp/sites_v2.pdf')
cat(t, file = 'c:/temp/sits.txt')



t2 <- read.table('C:/Users/sea084/Dropbox/RossRCode/Git/soilsDataFederator/DataMassage/PCSites/pcsitesRaw4.csv', 
                header = T, stringsAsFactors= F, strip.white = T, blank.lines.skip = TRUE, sep = ',')

t3 <- na.omit(t2)
write.csv(t3, 'C:/Users/sea084/Dropbox/RossRCode/Git/soilsDataFederator/DataMassage/PCSites/pcsitesComplete.csv')


morph <- read.csv('C:/Users/sea084/Dropbox/RossRCode/Git/soilsDataFederator/DataMassage/PCSites/morphologyObservedProperties.csv')
head(morph)
morph$PropertyType <- PropertyTypes$FieldMeasurement
dbWriteTable(conn, "Properties", morph)
mt <- dbReadTable(conn, "Properties")
str(mt)

labm <- dbReadTable(conn, "LabMethods")
str(labm)

pt <- data.frame(PropertyType=PropertyTypes$LaboratoryMeasurement, PropertyGroup=labm$LABP_CODE, Property=labm$LABM_CODE, Description=labm$LABM_NAME)
head(pt)
pt2 <- na.omit(pt)
dbWriteTable(conn, "Properties", pt2, append=T)
nrow(mt)
nrow(pt2)
mtnew <- dbReadTable(conn, "Properties")
nrow(mtnew)
