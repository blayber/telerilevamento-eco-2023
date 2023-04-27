
# how to measure landscape variability with R
prof

library(raster)
library(ggplot2)
library(patchwork)
setwd("C:/lab/") # Windows
sen <- brick("sentinel.png")
library(viridis)

# band1 = NIR
# band2 = red
# band3 = green
plotRGB <- (sen, 1, 2, 3, stretch="lin")
plotRGB <- (sen, 2, 1, 3, stretch="lin")

# standard deviation on the nir 
nir <- sen[[1]]
mean3 <- focal(nir, matrix(1/9, 3, 3), fun=mean)
plot(mean3)

sd3 <- focal(nir, matrix(1/9, 3, 3), fun=sd)
plot(sd3)

ggplot() +
geom_raster(sd3d, mapping=aes(x=x, y=y, fill=layer)) +
ggtitle("Standard deviation by viridis package")

(sd3, mapping=aes(x=x, y=y, fill=layer))

sd3d <- as.data.frame(sd3, xy=TRUE)
sd3d

# using viridis
ggplot() +
geom_raster(sd3d, mapping=aes(x=x, y=y, fill=layer)) +
ggtitle("Standard deviation by viridis package") + scale_fill_viridis()

# oppure
ggplot() +
geom_raster(sd3d, mapping=aes(x=x, y=y, fill=layer)) +
ggtitle("Standard deviation by viridis package") + scale_fill_viridis(option="cividis")

# oppure
ggplot() +
geom_raster(sd3d, mapping=aes(x=x, y=y, fill=layer)) +
ggtitle("Standard deviation by viridis package") + scale_fill_viridis(option="magma")


# patchwork

p1 <- ggplot() +
geom_raster(sd3d, mapping=aes(x=x, y=y, fill=layer)) +
ggtitle("Standard deviation by viridis package") + scale_fill_viridis(option="cividis")
p2 <- ggplot() +
geom_raster(sd3d, mapping=aes(x=x, y=y, fill=layer)) +
ggtitle("Standard deviation by viridis package") + scale_fill_viridis(option="magma")
p1 + p2




# R code variability

library(raster)
# library(RStoolbox) # for image viewing and variability calculation
library(ggplot2) # for ggplot plotting
library(patchwork) # multiframe with ggplot2 graphs
# install.packages("viridis")
library(viridis)

setwd("~/lab/") # Linux
# setwd("C:/lab/") # Windows
# setwd("/Users/name/Desktop/lab/") # Mac

# Exercise: import the Similaun image
sen <- brick("sentinel.png")

# band1 = NIR
# band2 = red
# band3 = green

# Exercise: plot the image by the ggRGB function
plotRGB <- (sen, 1, 2, 3, stretch="lin")

# NIR on g component
plotRGB(sen, 2, 1, 3)

# calculation of variability over NIR
nir <- sen[[1]]

sd3 <- focal(nir, matrix(1/9, 3, 3), fun=sd)

clsd <- colorRampPalette(c('blue','green','pink','magenta','orange','brown','red','yellow'))(100) #
plot(sd3, col=clsd)

# plotting with ggplot
sd3d <- as.data.frame(sd3, xy=T)

ggplot() +
geom_raster(sd3d, mapping=aes(x=x, y=y, fill=layer))

# with viridis
ggplot() +
geom_raster(sd3d, mapping =aes(x=x, y=y, fill=layer)) +
scale_fill_viridis() +
ggtitle("Standard deviation by viridis package")

# cividis
ggplot() +
geom_raster(sd3d, mapping =aes(x=x, y=y, fill=layer)) +
scale_fill_viridis(option = "cividis") +
ggtitle("Standard deviation by viridis package")

# magma
ggplot() +
geom_raster(sd3d, mapping =aes(x=x, y=y, fill=layer)) +
scale_fill_viridis(option = "magma") +
ggtitle("Standard deviation by viridis package")

# inferno
ggplot() +
geom_raster(sd3d, mapping =aes(x=x, y=y, fill=layer)) +
scale_fill_viridis(option = "inferno") +
ggtitle("Standard deviation by viridis package")

# patchwork
p1 <- ggplot() +
geom_raster(sd3d, mapping =aes(x=x, y=y, fill=layer)) +
scale_fill_viridis() +
ggtitle("Standard deviation by viridis package")

p2 <- ggplot() +
geom_raster(sd3d, mapping =aes(x=x, y=y, fill=layer)) +
scale_fill_viridis(option = "inferno") +
ggtitle("Standard deviation by viridis package")

p1 + p2




