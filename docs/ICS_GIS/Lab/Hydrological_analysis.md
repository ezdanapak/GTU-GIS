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
* Inside it, create the following subfolders:  
  - Archive
  - Geodatabase
  - Raster  
  - Project
  - Shp
  

``` mermaid
graph LR
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> B{Raster};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> C{Archive};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> D{Geodatabase};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> E{Project};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> F{Shp};
  
 
```

Connect ArcGIS (from ArcCatalog) to this main folder.

---


=== "Step II: Geoprocessing data"
* Import 2 slice of raster data for Georgia and merge them, don't change raster projection from WGS 84. Check it!
* Import regions layer from geodatabase
* Clip this raster with one region of Georgia


* Import rivers layer from geodatabase
* labels
* Clip rivers layer with selected region of Georgia

* start use of hydrology tools :
Flow Direction, Sink, Fill, Flow Accumulation, Stream order, Stream to feature, Basin, Watershed
* 

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
