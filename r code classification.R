library(raster)
setwd("C:/lab/") # Windows
so <- brick("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")


singlenr <- getValues(so)
singlenr

# 2. kmeans
kcluster <- kmeans(singlenr, centers = 3)
kcluster

3. Set values to a raster on the basis of so
soclass <- setValues(so[[1]], kcluster$cluster) # assign new values to a raster object

cl <- colorRampPalette(c('yellow','black','red'))(100)
plot(soclass, col=cl)

# class 1: highest energy level
# class 2: medium energy level
# class 3: lowest energy level

frequencies <- freq(soclass)
tot = 2221440
percentages = frequencies * 100 / tot

# class 1: highest energy level 21,2%
# class 2: medium energy level  41.4%
# class 3: lowest energy level  37.3%

#.... gran canyon exercise
gc <- brick("dolansprings_oli_2013088_canyon_lrg.jpg")
plotRGB(gc, r=1, g=2, b=3, stretch="lin")

# the image is quite 
gcc <- crop(gc, drawExtent())
gcc
plotRGB(gcc, 1, 2, 3, stretch="lin")

ncell(gcc)
# 15647931

# 1. Get values
singlenr <- getValues(gcc)
singlenr

# 2. Classify
kcluster <- kmeans(singlenr, centers = 3)
kcluster

# 3. Set values
gcclass <- setValues(gcc[[1]], kcluster$cluster) # assign new values to a raster object
gcclass

plot(gcclass)

# class 1: volcanic rocks
# class 2: sandstone
# class 3: conglomerates

frequencies <- freq(gcclass)
frequencies

total <- ncell(gcclass)
total
12999358
percentages <- frequencies * 100 / total
percentages






cl <- colorRampPalette(c('yellow','black','red'))(100)
plot(gcclass, col=cl)


singlenr <- getValues(gc)
kcluster <- kmeans(singlenr, centers = 3)
kcluster






