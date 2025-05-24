Overview of ArcGIS. Spatial Analyst extension of ArcGIS. Displaying DEM & TIN. Data
Conversion (Vector to Raster) 

---
## Assignment Instructions

⚠️ **Work Environment**

On university computers, work inside the folder:  
`C:\Users\Public\` or `C:\Users\Public\Documents`  
*(This is recommended even on personal computers, as the program may encounter issues when files are located elsewhere.)*

📦 **Required Software**

* ArcGIS – Required ✅  
* Google Earth – Optional (depending on the task) ✅  

---

!!!warning
    Do not delete completed work until the end of the semester.
    
---

!!!danger 
    **File Naming Rules**

    ❌ **Incorrect:**  

    Giorgi Kapanadze.Group/1$ work1  

    ❌ Do not use:

    - Georgian characters (ა, ბ, გ, დ, etc.)  
    - Special symbols (other than an underscore `_`)

    ✅ **Correct:**

    Giorgi_Kapanadze_Group_4_work_1  

!!!tip
    Use only Latin letters, numbers, and underscores (`_`) for:  
    Archive names, folder and file names, and table column names.

---

## 📘 Step-by-Step Guide

!!!note
    You must be authorized (logged in) on [elearning.gtu.ge](https://elearning.gtu.ge) to download the data.

=== "Step I: Folder Setup"
* We are using a **Topology [task](https://ezdanapak.github.io/GTU-GIS/ICS_GIS/Lab/Hydrology/)** as part of this exercise.
* Rename main folder from Topology to DEM_TIN. Example "Giorgi_Kapanadze_Group_4_work_6_DEM_TIN" <br>
* დასაკორექტირებელია Also download archive from [here](https://elearning.gtu.ge/pluginfile.php/572869/mod_folder/)
* Add inside project additional necessary folders:
  - Inside Raster folder add subfolders DEM, Terrain
  - გარეთ სხვა საქაღალდე თუ საჭირო იქნება ჩავამატებთ

``` mermaid
graph LR
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> B{Archive};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> C{Project};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> D{lyr};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> E{shp};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> F{Geodatabase};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> G{Style};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> H{Topology_rules};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> I{Raster};
  I -->|დასაკორექტირებელია| J[DEM];
  I -->|For slope, Aspect, Hillshade| K[Terrain];

```
Connect ArcGIS (from ArcCatalog) to this main folder.

---

დასაკორექტირებელია

Creating a DEM Raster from Shapefile Data

* Generate a DEM raster from the provided shapefile data. 
* Convert the DEM to a TIN model.
* Import and visualize the 3D DEM in ArcScene.
* Generating and Labeling Isolines from Another DEM File

* Derive isolines (contour lines) from the specified DEM file.
* Display isoline values as labels.
* Save as project files .mxd .sxd
--------------------------------------

* Clip the raster (found in the DEM_GEO.rar archive) with the municipality frames from the linked geodatabase (Georgia.gdb.rar). <br>
* Generate isolines from the clipped raster data, categorize them, and add labels. The isolines must be saved as a shapefile (isolines.shp). <br>
* Create hillshade, slope, and aspect maps in .tif format from the clipped raster data. <br>
* Store the raster data in a new geodatabase by importing it from the workspace. <br>
* Change the data source from .tif to geodatabase grid format.  --- List the data sources. <br>
* Properly saving the project file of ArcMap. Name it "DEM_TIN". Save another mxd file for old versions "DEM_TIN_10.0v".
* Properly saving the project file of ArcScene. Name it "DEM_TIN". Save another sxd file for old versions "DEM_TIN_10.0v".



---

=== "Step III: Final Checks & Submission"
* After georeferencing, verify the map location using any available method. You can use Google Earth or ArcGIS and import firstly any Basemap.. 🌍
* Ensure that the map correctly aligns with the target area. 🗺
* Compress (zip) your folder (named after your first and last name). 💾
* Use formats like `.rar` or `.zip`.
* Name the archive as:  
  `FirstName_LastName_GroupNumber_Assignment_Number`

* Send it to: giorgi.kapanadze@gtu.ge

---

!!!warning
    If you experience any issues with the submission process, contact:  
    giorgi.kapanadze@gtu.ge  
    Or use any file transfer services.

!!!info
    📌 If anything is unclear, feel free to ask! 😊  
    If something here was done incorrectly, I’ll correct it — or you can create a pull request.  