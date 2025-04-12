# Vector data editing. Topological Storage of Vector Data. Topology. The Example of DIME. 

## An overview of topology in ArcGIS

If you have features that are coincident and share the same location of coordinates, boundaries, or nodes, chances are that geodatabase topology can help you better manage your geographic data. 
Check [link](https://desktop.arcgis.com/en/arcmap/latest/manage-data/topologies/an-overview-of-topology-in-arcgis.htm) <br>

Also you must see Topology rules [poster](https://pro.arcgis.com/en/pro-app/latest/help/editing/pdf/topology_rules_poster.pdf)


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
* Download shapefiles from here
* Create new geodatabase "mynewgeodatabase" and inside dataset, name it "shp_topology".
* Create Topology and some base rules:
    - polygon Must not have gaps
    - Must not overlap
    - line Must not self-overlap
    - Must not self-intersect 
    - point Must be properly inside
    - Must be covered by boundary of



in new dataset and import spatial data here. 
* in the Geodatabase to Correct Digitized Spatial Data

Define topology rules and save in a predefined folder.
Validate topology.
Correct errors as needed.

Building Project (with Necessary Folders) and Naming Convention:

Project Name: My_project
Folders:
shp
project
Geodatabase
Topology rules


