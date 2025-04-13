# Importing data from text file. Projecting and reprojecting data. Data file Structure (Shapefile,Coverages, Geodatabase) 

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
* Download Basemap files from [here](https://elearning.gtu.ge/pluginfile.php/572869/mod_folder/content/0/Basemaps_lyr.zip?forcedownload=1)
* Download the data from [here](https://elearning.gtu.ge/pluginfile.php/572869/mod_folder/content/0/GPS_AND_Photo.zip?forcedownload=1)
    
* Create necessary folders for the project from the starting point, or add more as needed during the workflow. Follow the file naming rules provided above. <br>
    - archive
    - GPS_coordinates 
    - lyr
    - Project 
    - Raster 
    - shp

``` mermaid
graph LR
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> B{archive};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> C{GPS_coordinates};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> D{Project};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> E{shp};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> F{Raster};
  F --> J[GeoTaggedphoto];
```

Connect ArcGIS (from ArcCatalog) to this main folder.

---


=== "Step II: Doing imports"
* Import GPS coordinates as a shapefile. <br>
* Import geotagged photos as a shapefile. <br>
* Create hyperlinks on the photos layer and display photos as pop-ups. <br>
* Delete unnecessary fields from the layers, either using the attribute table or ArcToolbox. <br>
* Convert the photos layer from the ellipsoid to the UTM zone and calculate XY coordinates in the layer table using ArcToolbox or manual methods. <br>
* Save project file named as "GPS_photo_coordinates". Save another mxd file for old versions "GPS_photo_coordinates10.0v".
* You can Geotag photos manualy on the web [site](https://tool.geoimgr.com/)


---

=== "Step III: Final Checks & Submission"
* After that, verify the layers location using any available method. 🌍
* Ensure that the all of them correctly aligns with the target area. 🗺
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







