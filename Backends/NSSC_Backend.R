library(RSQLite)
library(DBI)
library(stringr)



dbPath <- 'C:/Projects/TernLandscapes/Site Data/NSSC_2.0.0.sqlite'


dbListTables(con)

agency_code <- c()

con <- dbConnect(RSQLite::SQLite(), dbPath)
sql <- paste0("Select * from LAB_RESULTS where LABM_CODE = '", observedProperty, "'")
df = doQuery(con, sql)
dbDisconnect(con)