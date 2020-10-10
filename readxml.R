setwd("E:/Web section/GONI/SelfPractice/r progamming")
install.packages("E:/Web section/GONI/SelfPractice/r progamming/XML_3.99-0.5(1).tar.gz", repos = NULL, type = "source")

require(devtools)
install.packages("XML")
library("XML")
library("methods")
result <- xmlParse(file = "dataxml.xml")
xml_doc <-xmlTreeParse(paste("https://www.parkleitsystem-basel.ch/alte_site/rss_feed.php?xml=1", sep = ""))
