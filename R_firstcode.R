# my first code in git hub  
# let's install the raster package
instal. packages ("raster")

library(raster)                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

# setwd("c:/lab/") # windows


l2011 <- brick("p224r63_2011_masked.grd")

# plotting the data in a savage manner
plot(l2011)

plot(l2011)
cl <- colorRampPalette(c("red", "orange", "yellow"))(100) 
plot(l2011, col=cl)

#plotting one element
plot(l2011[[4]], col=cl)

plot(l2011$b4_sre, col=cl)

nir <- l2011[[4]] # nir <- l2011$b4_sre
plot(nir, col=cl)

# exercise: change the colour gamut for alla the images
cl <- colorRampPalette(c("red", "orange", "yellow"))(100) 

plot(l2011[[3]], col=cl)

dev.off() per chiudere le finestre

# export graphs in R

pdf("myfirstgraph.pdf")
plot(l2011$B4_sre, col=cl)
dev.off()

#plotting several bands in a multiframe
par(mfrow=c(2,1))
plot(l2011[[3]], col=cl)
plot(l2011[[4]], col=cl)

# plotting the first 4 layer / bands 
par(mfrow=c(2,2))

# blue 
clb <- colorRampPalette(c("blue4", "blue2", "light blue"))(100) 
plot(l2011[[1]], col=clb)

# red
clb <- colorRampPalette(c("brown1", "brown2", "brown3"))(100) 
plot(l2011[[1]], col=clb)

#aquamarine
clb <- colorRampPalette(c("aquamarine", "aquamarine1", "aquamarine3"))(100) 
plot(l2011[[1]], col=clb)

# darkorchid
clr  <- colorRampPalette(c("darkorchid", "darkorchid1", "darkorchid2"))(100)
plot(l2011[[1]], col=clr)

