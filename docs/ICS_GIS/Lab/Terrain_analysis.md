Editing Data. Efficiency of the Line Intersection Algorithm. More on Algorithm Efficiency.
Raster Data Structures.

Lab 7

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
* We are using a **DEM&TIN [task](https://ezdanapak.github.io/GTU-GIS/ICS_GIS/Lab/DEM_TIN/)** as part of this exercise.
* Rename main folder from Topology to DEM_TIN. Example "Giorgi_Kapanadze_Group_4_work_6_DEM_TIN" <br>
* Add inside project additional necessary folders:
  - Inside Raster folder add subfolder Terrain


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
  I --> J{DEM};
  I -->|For slope, Aspect, Hillshade| K[Terrain];

```
Connect ArcGIS (from ArcCatalog) to this main folder.

---

---

- Save them in Raster folder inside "terrain"
* Create hillshade in .tif format from the clipped raster data with default parameters and another one with 
azimuth angle of the light source 200 & Altitude angle of the light source above the horizon 30 degrees.  <br>
* Create slope in .tif format from the clipped raster data. <br>
* Create aspect in .tif format from the clipped raster data. <br>

---

* Store the DEM raster data in a geodatabase by importing it from the workspace. <br>
* Change the data source from .tif to geodatabase grid format.  --- List the data sources. <br>
* Properly saving the project file of ArcMap. Name it "Terrain_analysis". Save another mxd file for old versions "Terrain_analysis_10.0v". <br>

---

=== "Step III: Final Checks & Submission"

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