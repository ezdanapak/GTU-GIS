## About Ellipsoid
Check the link: > [Ellipsoid](https://en.wikipedia.org/wiki/Ellipsoid)

## About Earth ellipsoid
Check the link: > [Earth ellipsoid](https://en.wikipedia.org/wiki/Earth_ellipsoid)

## About Datum
Check the link: > [Datums](https://desktop.arcgis.com/en/arcmap/latest/map/projections/datums.htm)

## About Satellite navigation
Check the link: > [Satellite navigation](https://en.wikipedia.org/wiki/Satellite_navigation)

## About Geographic coordinate systems
Check the link: > Geographic coordinate [systems](https://desktop.arcgis.com/en/arcmap/latest/map/projections/about-geographic-coordinate-systems.htm)


## Geoid, ellipsoid, spheroid, and datum
How they are [related](https://desktop.arcgis.com/en/arcmap/latest/map/projections/about-the-geoid-ellipsoid-spheroid-and-datum-and-h.htm)


---

Fundamentals of Applied [Cartography](https://elearning.gtu.ge/pluginfile.php/569096/mod_book/intro/Fundamentals_of_applied_cartography.zip) <br>
It's small book scanned pages in jpg format packed by zip archive. 

!!!Note
    The book is in Georgian and consists of scanned pages in JPG format, packed in a ZIP archive. <br>
    However, the basic theory we need can be found in various online resources. <br>
    You only need to read Chapter 2. <br>
    

Chapter 2 - Topics in Mathematical Cartography: <br>
- Mathematical foundation of the map <br>
- Geodetic foundation of the map


## Coordinate Systems Used in Georgia

- WGS 84 [EPSG:4326](https://epsg.io/4326)
This is one of the most commonly used EPSG codes, referring to the WGS 84 ellipsoid, which is used in GPS systems and other global spatial datasets.

New Rectangular System <br>

Ellipsoid: WGS 84 <br>
Projection: UTM


- WGS 84 / UTM zone 38N	[EPSG:32638](https://epsg.io/32638)
- WGS 84 / UTM zone 37N	[EPSG:32637](https://epsg.io/32637)


---

Also known as Spherical Mercator, this projection is used in Google Maps, OpenStreetMap, Bing, ArcGIS, and ESRI products.

EPSG:3857 (Web Mercator) – Frequently used in web mapping applications.
- WGS 84 / Pseudo-Mercator [EPSG:3857](https://epsg.io/3857)
---

Old Rectangular System <br>

Ellipsoid: Pulkovo 1942

Projection: Gauss-Kruger


- Pulkovo 1942 / Gauss-Kruger zone 8	[EPSG:28408](https://epsg.io/28408)
- Pulkovo 1942 / Gauss-Kruger zone 8N	[EPSG:28468](https://epsg.io/28468)
- Pulkovo 1942 / Gauss-Kruger zone 7	[EPSG:28407](https://epsg.io/28407)
- Pulkovo 1942 / Gauss-Kruger zone 7N	[EPSG:28467](https://epsg.io/28467)


###  Vertical Coordinate Reference System


EGM96 height
Properties
Units: meters
Static (relies on a datum which is plate-fixed)
Celestial body: Earth

[EPSG:5773](https://epsg.io/5773)


## 🔍 What Is an EPSG Code?

An EPSG code is a unique identifier assigned to a coordinate reference system (CRS) by the EPSG Geodetic Parameter Dataset, maintained by the International Association of Oil & Gas Producers (IOGP).

These codes describe how geographic data is projected and located on Earth, including:

Ellipsoid model (e.g., WGS 84)

Datum

Projection method (e.g., UTM, Mercator)

Coordinate system units (meters, degrees)

---

📌 EPSG Code Example Breakdown
Example: EPSG:4326
Name: WGS 84

Type: Geographic Coordinate System (GCS)

Units: Degrees

Usage: GPS, global positioning, Earth-wide data

Example: EPSG:32638
Name: WGS 84 / UTM zone 38N

Type: Projected Coordinate System (PCS)

Projection: Universal Transverse Mercator (UTM)

Units: Meters

Usage: Used in Georgia and nearby regions (zone 38 north)

---

📚 Why It Matters
Using the correct EPSG code ensures:

Accurate spatial alignment between datasets

Correct distance, area, and coordinate measurements

Compatibility between GIS software and data layers



## National Height System of Georgia

🇬🇪 National Height System of Georgia
📌 What is the National Height System?
The National Height System of Georgia is a standardized vertical reference framework used to measure and represent elevations (heights) across the territory of Georgia. It is essential for accurate and consistent geospatial, engineering, and construction data.

---

🧭 Reference Level
The system is based on the Baltic Sea Mean Level, specifically the Kronstadt Zero (Кронштадтский ноль), which serves as the zero elevation point.

All elevation data in Georgia is measured relative to this level, known as orthometric height.

---

🏗️ Why is it important?
National Consistency

Ensures all elevation measurements across Georgia follow the same standard.

Enables the integration of data from different regions without mismatches.

Infrastructure and Construction

Used in the design and planning of roads, railways, bridges, dams, and pipelines.

Prevents elevation-related errors in engineering projects.

GIS and Mapping

Supports accurate digital elevation models (DEMs), contour lines, flood modeling, and terrain analysis.

Used in combination with horizontal coordinate systems (like UTM or WGS 84).

Hydrology and Environment

Critical for modeling water flow, managing watersheds, and conducting flood risk assessments.

---

📐 How is it used?
Heights in this system are orthometric, meaning they represent the vertical distance from the geoid (approximate sea level).

GPS receivers typically measure ellipsoidal heights, so a geoid model is required to convert GPS data into the national height system.

In GIS software like ArcGIS, when working with elevation data (e.g., DEMs), heights should be based on the national system to ensure accuracy.

---

🔧 Example Usage
In ArcGIS:

Load a DEM that uses the Georgian height system (e.g., derived from official topographic surveys).

Assign a projected CRS such as UTM Zone 38N (EPSG:32638).

Ensure the vertical units are in meters above the Baltic Sea Mean Level (orthometric).

