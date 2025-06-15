# Introducing GIS lab. ArcCatalog and ArcMap

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
* Create a folder using your first and last name. Follow the file naming rules provided above.
* Inside it, create the following subfolders:  
  - Project  
  - lyr 
  - shp  

``` mermaid
graph LR
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> B{Project};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> C{lyr};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> D{shp};
```

Connect ArcGIS (from ArcCatalog) to this main folder.

---

=== "Step II: Create shapefiles"

**Additional info**

* Digitization of the Tbilisi Municipality is       prohibited. Please select a different city or village.
After selecting a village or city, please specify the zone if you are located exactly on the border and are unsure which to choose:

    If the majority of the objects you intend to containerize fall within Zone 37, please select 37.

    If the majority of the objects you intend to containerize fall within Zone 38, please select 38.

    If the location is in the middle and the number of objects is evenly distributed, please select 38.

    Priority should be given to Zone 38.

**Base info**

* Assigning accurate layer names and save in an appropriate folder. Template of layers provided here:
    - Point Geometry: Home, schools, stations, buildings, stadiums
    - Line Geometry: Rivers, railways, roads, ropeways
    - Polygon Geometry: Parcels, homes, buildings, stadiums, forests



* Each layer must contain a minimum of 10 objects, there is no restriction on the maximum number.
If a particular layer has insufficient data, please proceed to another layer and complete it instead.

* There are no strict limitations on color or shape for symbolization—feel free to style them as you see fit.
However, representing a forest in blue or a river in green would be considered somewhat inappropriate.


* Selecting the correct UTM zone for your data.

* Properly saving digitalized data in layers.

* Structuring layers within the project.

* Properly saving the project file. Name it "Digitalization_project". Save another mxd file for old versions "Digitalization_project10.0v".


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