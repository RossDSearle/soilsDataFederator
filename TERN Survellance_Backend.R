library(jsonlite)
library(RCurl)
library(rgdal)

df <- fromJSON("http://144.6.225.21/om_site")

outDF <- data.frame(id=character(), lon=numeric(), lat=numeric())

for (i in 1:nrow(df)) {

  print(df$`rdfs:label`[i])

  sdf <-  df[1,7]

  odf <- data.frame(id=character(nr), lon=numeric(nr), lat=numeric(nr), stringsAsFactors = F)
  for (j in 1:length(sdf[[1]])) {

    print(paste0(i, " : ", j))
    df2 <- fromJSON(sdf[[1]][j])
    #print(sdf[[1]][j])
    odf[j,1] <- df$`rdfs:label`[i]
    odf[j,2] <- df2$`geo:long`
    odf[j,3] <- df2$`geo:lat`
    Sys.sleep(0.2)

  }

  outDF <- rbind(outDF, odf)
}


bdf <- outDF
coordinates(bdf)<- ~lon+lat
plot(bdf)


csv <- getURL("http://swarmapi.ausplots.aekos.org.au/soil_characterisation", httpheader = c(Accept = "text/csv"), verbose = TRUE)

cat(csv, file = 'c:/temp/surv.csv')

soilDF <- fromJSON("http://swarmapi.ausplots.aekos.org.au/soil_characterisation")
siteDF <- fromJSON("http://swarmapi.ausplots.aekos.org.au/site")
bulkDensityDF <- fromJSON("http://swarmapi.ausplots.aekos.org.au/soil_bulk_density")
subsiteDF <- fromJSON("http://swarmapi.ausplots.aekos.org.au/soil_subsite")


allInfo <- fromJSON("http://144.6.225.21/ross" )
allDFs <- allInfo[order(allInfo$site_location_name, allInfo$site_location_visit_id, allInfo$upper_depth),]
nrow(allInfo)

unique(allInfo$observed_property)
length(unique(allInfo$site_location_name))
length(unique(siteDF$site_location_name))

bdf <- siteDF
coordinates(bdf)<- ~longitude+latitude
plot(bdf)



allDF <- merge(soilDF, siteDF, by.x = c('site_location_name', 'site_location_visit_id' ), 
               by.y = c('site_location_name', 'site_location_visit_id' ),
               all.x = TRUE)

allDFs <- allDF[order(allDF$site_location_name, allDF$site_location_visit_id, allDF$upper_depth),]
write.csv(allDFs, file = 'c:/temp/surv.csv')








sali <- fromJSON("https://soil-chem.information.qld.gov.au/odata/SiteLabMethodResults?%24top=1000&filter=ProjectCode eq '3MC' and SiteId eq 153 and ObservationNumber eq 1")




LabMethodCode eq '10A1'
