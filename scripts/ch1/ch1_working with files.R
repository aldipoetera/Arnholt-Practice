data.BODYFAT = BODYFAT

BODYFAT
head(BODYFAT)

paste("ak","mls","bgt")

site <- paste0("https://www.arcgis.com/sharing/rest/",
               "content/items/e6ca4eadecdc475a961f68bc314e2a86/data")
download.file(site, destfile="./external datas/crime.csv")
list.files("./external datas")
file.info("./external datas/crime.csv")

crime <- read.csv("./external datas/crime.csv")
head(crime)

list.files("..")
