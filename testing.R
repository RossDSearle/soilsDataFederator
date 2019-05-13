
source(paste0('C:/Users/sea084/Dropbox/RossRCode/Git/soilsDataFederator','/Backends/Backends.R'))


op = 'h_texture'
op = '4A1;4b1'
og = 'PH'

df <- getSoilData(NULL, observedProperty=op)
df <- getSoilData(NULL, observedPropertyGroup=og)

nrow(df)
head(df)





