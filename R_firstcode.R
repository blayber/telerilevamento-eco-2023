# my first code in git hub  
# let's install the raster package
instal. packages ("raster")

library(raster)                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

# setwd("c:/lab/") # windows


l2011 <- brick("p224r63_2011_masked.grd")

# plotting the data in a savage manner
plot(l2011)

cl <- colorRampPalette(c("red", "orange", "yellow"))(100) # 100 sono le sfumature
plot(l2011, col=cl)

#plotting one element
plot(l2011[[4]], col=cl)

plot(l2011$b4_sre, col=cl)

nir <- l2011[[4]] # nir <- l2011$b4_sre
plot(nir, col=cl)
