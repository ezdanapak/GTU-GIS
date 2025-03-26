## Georeferencing Topo Sheets and Scanned Maps (QGIS3)
Most GIS projects require georeferencing some raster data. Georeferencing is the process of assigning real-world coordinates to each pixel of the raster. Many times these coordinates are obtained by doing field surveys - collecting coordinates with a GPS device for few easily identifiable features in the image or map. In some cases, where you are looking to digitize scanned maps, you can obtain the coordinates from the markings on the map image itself. Using these sample coordinates or GCPs ( Ground Control Points ), the image is warped and made to fit within the chosen coordinate system. In this tutorial I will discuss the concepts, strategies and tools within QGIS to achieve a high accuracy georeferencing.

This tutorial is to geo-reference an image which has coordinates information available on the map image itself (i.e. grids with labels). If your source image does not have such information, you can use the method outlined in Georeferencing Aerial Imagery (QGIS3)



Full tutorial is [here](https://www.qgistutorials.com/en/docs/3/georeferencing_basics.html)