Importing data from text file. Projecting and reprojecting data. Data file Structure (Shapefile,
Coverages, Geodatabase) 

---

(GPS_AND_Photo.rar)

=== "Steps for assignement"
    * Create necessary folders for the project from the starting point, or add more as needed during the workflow. <br>
    * Import GPS coordinates as a shapefile. <br>
    * Import geotagged photos as a shapefile. <br>
    * Create FileGeodatabase, import shapefiles and save project file named as "GPS.mxd".
    * Create hyperlinks on the photos layer and display photos as pop-ups. <br>
    * Delete unnecessary fields from the layers, either using the attribute table or ArcToolbox. <br>
    * Convert the photos layer from the ellipsoid to the UTM zone and calculate XY coordinates in the layer table using ArcToolbox or manual methods. <br>











🗃️ Geospatial Databases & Data Management in ArcGIS

1. Geospatial Databases
Overview of geospatial database formats:

* MDB, GDB, GeoPackage, SQLite, XML, GeoJSON

* Introduction to DBMS (Database Management Systems)

---

2. Data management
* Using the Database Toolbar

* Creating a new database
    - Digitizing or importing Spatial Objects: <br>
    Point Geometry: Home, schools, stations, buildings, stadiums <br>
    Line Geometry: Rivers, railways, roads, ropeways <br>
    Polygon Geometry: Parcels, homes, buildings, stadiums, forests <br>
* Delete Geodatabase
* Compact Geodatabase
* Compress Geodatabase
* Importing layers from within the project or external sources
* Using the Package Layers tool from the ArcToolbox

* Fixing missing sources via Repair Data Source


3. Attribute Tables
* Understanding and working with attribute tables

4. OBJECTID Field
* What is OBJECTID?

* Autogeneration and usage

* Comparison with Shapefile IDs

* Overview of data types and field parameters

---

5. Working with Fields & Symbology
* Creating new columns (fields)

* Using short column names

* Writing simple expression-based selections

* Entering data manually

* Duplicating layers

* Symbolizing and categorizing layers based on attribute values

🛑 What if a Category is Missing?
* What happens if Feature Attributes are not categorized both visually and in the attribute table?

* How to remove or add categories to a layer

---

6. Saving & Loading Layer Styles
* How to save and reuse layer styles

* Use styles within the same project or across different projects

---

7. Geometry & Measurement Fields
Extracting:

* XY coordinates/Decimal degrees
* Adding X/Y Coordinates to Attribute Table
* Automatically add X and Y coordinate fields to your layer
Area
Perimeter
Length

---

8. Packaging maps
9. 

10. 