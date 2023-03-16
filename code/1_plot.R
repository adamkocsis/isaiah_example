setwd("/home/adam/Desktop/git_dummy")

# required packages
library(sf)

bdt <- readRDS("data/BioDeepTime/v0.6/biodeeptime.rds")


# load the data
land <- st_read("data/ne_110m/ne_110m_land.shx")

# plot to file
pdf("export/map.pdf", width=14, height=7)
	plot(land$geometry, col="gray", border=NA)
dev.off()
