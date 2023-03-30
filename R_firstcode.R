# my first code in git hub  
# let's install the raster package
instal. packages ("raster")

library(raster)                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

# setwd("c:/lab/") # windows

 <- brick("p224r63_2011_masked.grd")
 

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

# RGB plotting 
plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")

plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")


plotRGB(l2011, r=3, g=4, b=2, stretch="Lin")

plotRGB(l2011, r=3, g=2, b=4, stretch="Lin")

# multiframe with natural and false colours

par(mfrow=c(2,1))
plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")

# histogram stretching
par(mfrow=c(2,1))
plotRGB(l2011, r=3, g=2, b=1, stretch="hist")
plotRGB(l2011, r=4, g=3, b=2, stretch="hist")


# histogram stretching
par(mfrow=c(2,1))
plotRGB(l2011, r=3, g=2, b=2, stretch="Lin")
plotRGB(l2011, r=4, g=3, b=2, stretch="hist")

#exercise: plot the NIR band
plot(l2011[[4]])


plotRGB(l2011, r=3, g=2, b=1, stretch="lin")

plotRGB(l2011, r=4, g=3, b=2, stretch="lin")

plotRGB(l2011, r=3, g=4, b=2, stretch="lin")   vegetazione rossa

plotRGB(l2011, r=3, g=2, b=4, stretch="lin")  vegetazione blu

#exercise: import the 1988 image
l1988 <- brick("p224r63_1988_masked.grd")

#exercise: plot in RGB space (natural colours)
plotRGB(l1988, r=3, g=2, b=1, stretch="lin")
plotRGB(l1988, r=4, g=3, b=2, stretch="lin")

plotRGB(l1988, r=4, g=3, b=2, stretch="lin")

plotRGB(l1988, 4, 3, 2, stretch="lin")  variante per scienziati pigri

# multiframe 
par(mfrow=c(2,1))    per vedere 2 immagini in 1 lez 23 marzo
plotRGB(l1988, 4, 3, 2, stretch="lin")
plotRGB(l2011, 4, 3, 2, stretch="lin")

dev.off()

par(mfrow=c(2,2))    multiubande 
plotRGB(l1988, 4, 3, 2, stretch="lin")
plotRGB(l2011, 4, 3, 2, stretch="lin")
plotRGB(l1988, 4, 3, 2, stretch="hist")
plotRGB(l2011, 4, 3, 2, stretch="hist")







l1992 <- brick("defor1_1,png")


