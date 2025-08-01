GIS Data Search. Algorithms for Creating a Triangulated Irregular Network.


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
* We are using a **DEM & TIN [task](https://ezdanapak.github.io/GTU-GIS/ICS_GIS/Lab/DEM_TIN/)** as part of this exercise.
* Rename main folder from DEM & TIN to Hydrological analysis. Example "Giorgi_Kapanadze_Group_4_work_8_hydrological_analysis" <br>
* Download Basemap files from [here](https://elearning.gtu.ge/pluginfile.php/572869/mod_folder/content/0/Basemaps_lyr.zip?forcedownload=1)
* Download nesecery Raster DEM files from [here](https://elearning.gtu.ge/pluginfile.php/572869/mod_folder/content/0/SRTM.zip?forcedownload=1)
* Download geodatabase of Georgia from [here](https://elearning.gtu.ge/pluginfile.php/572869/mod_folder/content/0/Georgia.gdb.rar?forcedownload=1)
* Inside it, create the following subfolders:  
  - SRTM

  

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
  I --> K{SRTM};
  
 
```

Connect ArcGIS (from ArcCatalog) to this main folder.

---


=== "Step II: Geoprocessing data"
* Import raster data and merge them, don't change raster projection from WGS 84. Check it!
* Import municipalities layer from geodatabase
* Clip this raster with one municipality border of Georgia
* Start use of hydrology tools on the clipped municipality dem :
 - Flow Direction, Sink, Fill, Flow Accumulation, Stream order, Stream to feature, Basin, Watershed
* Save all of them in geodatabase as a grid format
 
``` mermaid
graph TB
    A[Start - DEM] --> B{Initial Flow Direction}
    B -->|8 Directions| C[Flow Direction]
    B -->|More than 8 directions| E[Sink Detected]
    C --> D[Flow Accumulation]
    E --> F[Fill Sinks]
    F --> C
    D --> G[Stream Order]
    D --> H[Stream To Feature]
    C --> I[Watershed]
    C --> J[Basin]

```

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
