Designing a Map. Simple Line Intersection Algorithm. A Better Algorithm of Simple Line Intersection Algorithm


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
* We are using a **digitizing [task](https://ezdanapak.github.io/GTU-GIS/ICS_GIS/Lab/Digitization/)** as part of this exercise.


* Inside it, create the following subfolders:  
  - Geodatabase
  - Style  

``` mermaid
graph LR
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> B{Project};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> C{lyr};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> D{shp};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> E{Geodatabase};
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> F{Style};
```

Connect ArcGIS (from ArcCatalog) to this main folder.

---

=== "Step II: Adding the Database"



* Create a new File Geodatabase (.gdb extension) in the designated folder, also Style folder.

* Create a feature dataset, import spatial data from the shapefiles located in the `shp` folder, and group them accordingly.

* Open your existing project and replace the shapefiles with feature classes stored in the geodatabase.

* Fill in additional information in the attribute table:

**For roads:** <br>
- Create a column named `"name"` in which you will enter values like `"E117"` or `"S3"` for highways, or `"300 Aragveli Street"` for street names. <br>
- Create a column named `"length_m"` where you will calculate the length of each feature in meters using the UTM zone. <br>
- Create a column named `"length_km"` where you will calculate the length in kilometers using the UTM zone. <br>

**For rivers:** <br>
- Create a column named `"name"` where you will enter names such as `"Mtiuletis Aragvi"` or `"Gudamakris Aragvi"`. If the river has no name, write `"without name"`. <br>
- Create a column named `"length_m"` to calculate the length in meters using the UTM zone. <br>
- Create a column named `"length_km"` to calculate the length in kilometers using the UTM zone. <br>

**For bridges:** <br>
- Create a new column `"type"` where you will enter the category of the bridge: `"Pedestrian"`, `"Vehicle"`, or `"Combined"`. <br>

**For parcels:** <br>
- Create owner columns named `"name"`, `"surname"`, `"identity"`, and `"personal_id"` where you will enter the appropriate values.  <br>
- Create a column named `"area_sqm"` to calculate the length in meters using the UTM zone. <br>
- Create a column named `"area_sqkm"` to calculate the length in kilometers using the UTM zone. <br>
- Create a column named `"periemter_m"` to calculate the length in meters using the UTM zone. <br>
- Create a column named `"perimeter_km"` to calculate the length in kilometers using the UTM zone. <br>

**For restaurants, hotels, and stadiums:** <br>
- Create a column named `"name"` where you will enter their respective names. <br>

**Additional info** <br>

> **Note:** Not all feature types can be listed individually in these instructions.   <br>
> Please process each layer according to its geometry type: <br>

- **Point features**:  <br>
  Add fields to store **X and Y coordinates** (in your projected coordinate system). <br>

- **Line features**:   <br>
  Add fields to calculate **length**:
  - `"Length_m"` — length in meters using the UTM zone. <br>
  - `"Length_km"` — length in kilometers using the UTM zone. <br>

- **Polygon features**:   <br>
  Add fields to calculate **area and perimeter**: <br>
  - `"Area_sqm"` — area in square meters using the UTM zone. <br>
  - `"Area_ha"` — area in hectares. <br>
  - `"Perimeter_m"` — perimeter in meters. <br>

* If any information is unavailable for a feature, leave the cell empty.* <br>



=== "Step III: Symbolization"

* Break down each dataset into categories based on names and attributes.

* Assign appropriate labels to each object.

* Save the style files for each dataset in the designated folder.

* Compact Geodatabase 

* Properly saving the another project file. Name it "Geodatabase_project". Save another mxd file for old versions "Geodatabase_project10.0v".


=== "Step IV: Final Checks & Submission"

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