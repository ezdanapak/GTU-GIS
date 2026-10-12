# Querying Data. Data checking

## Overview

In this lab you learn to **find and select features** in ArcGIS Pro in three ways: by attribute values, by location (spatial relationship) and interactively on the map. You will also save a query, export the selected features and check the data source differences (shapefile, personal geodatabase, file geodatabase).

| Method | Where in ArcGIS Pro | Use it when |
|---|---|---|
| **Select By Attributes** | Map tab → Select By Attributes | you know a rule about the table values (e.g. area > 500 and type = 'residential') |
| **Select By Location** | Map tab → Select By Location | the rule is spatial (intersects, within a distance, contains, ...) |
| **Select tool** | Map tab → Select | you pick features by drawing on the map (rectangle, polygon, lasso, circle, line) |
| **Geoprocessing tools** | Analysis tab → Tools → *Select Layer By Attribute* / *Select Layer By Location* | you need the same selection in a model or a Python script |

---

## Assignment Instructions

⚠️ **Work Environment**

On university computers, work inside the folder:  
`C:\Users\Public\` or `C:\Users\Public\Documents`  
*(This is recommended even on personal computers, as the program may encounter issues when files are located elsewhere.)*

📦 **Required Software**

* ArcGIS Pro – Required ✅  
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

    Giorgi_Kapanadze_Group_4_work_11

!!!tip
    Use only Latin letters, numbers, and underscores (`_`) for:  
    Archive names, folder and file names, and table column names.

---

## 📘 Step-by-Step Guide

!!!note
    You must be authorized (logged in) on [elearning.gtu.ge](https://elearning.gtu.ge) to download the data.

=== "Step I: Folder and Project Setup"

    * Download the data **Chiatura_Selection.gdb.rar** from [elearning.gtu.ge](https://elearning.gtu.ge) and extract it.
    * Create the main folder, e.g. `Giorgi_Kapanadze_Group_4_work_11`, and put the geodatabase inside it.
    * Create a new ArcGIS Pro project (**Map** template) in this folder and name it `Querying_project`.
    * Connect the main folder: Catalog pane → right-click **Folders** → **Add Folder Connection**.
    * Add the layers from `Chiatura_Selection.gdb` to the map. Open the parcels layer's attribute table (right-click layer → **Attribute Table**) and look at the fields.

    ``` mermaid
    graph LR
      A[FirstName_LastName_GroupNumber_Assignment_Number] --> B{Project};
      A --> C{Data};
      A --> D{Queries};
      A --> E{Results};
    ```

=== "Step II: Select By Attributes"

    * Open **Map** tab → **Select By Attributes**. Choose the parcels layer.
    * Build an expression with **two conditions** (for example one with `=` and one with `>`), joined by `And` / `Or`. Click **Verify** before you apply it.
    * **Selection type** (the dropdown in the tool):
        - *New selection*
        - *Add to selection*
        - *Remove from selection*
        - *Select from current selection*: the **reselect** variant
        - *Switch selection* and **Clear** (the **unselect** variant)
    * **Save the query** with the **Save** button of the expression builder, and bring it back later with **Load**. Keep the files in the `Queries` folder.
    * Sort the attribute table (right-click a field header → **Sort Ascending / Descending**) and use **Show selected records** to see only the selected rows.
    * To keep only some features visible on the map, use a **Definition Query**: layer **Properties → Definition Query**. This filters the layer itself and is not a selection.

    !!!note "Differences between data sources (shp, mdb, gdb)"
        Field names and wildcard characters depend on the data source. In file geodatabases and shapefiles the text wildcard is `%` (many characters) and `_` (one character). In a personal geodatabase (`.mdb`) the wildcards are `*` and `?`. Shapefiles accept only a limited SQL subset and have field names of up to 10 characters. Test the same query on the same data in each format and note what changes.

=== "Step III: Select By Location"

    * Open **Map** tab → **Select By Location**.
    * Choose the parcels layer as *Input Features* and another layer (for example roads, rivers or a boundary) as *Selecting Features*.
    * Try several **Relationships**, such as *Intersect*, *Within a distance*, *Contains*, *Within* and *Boundary touches*, and compare the results. For *Within a distance* set a **Search Distance**.
    * **Export** the result: right-click the layer → **Data → Export Features**. Make sure only the **selected records** are exported. Save the result in the `Results` folder.
    * **Clip** (extract data by a boundary): **Analysis** tab → **Tools** → search for **Clip**. Compare the clipped result with the exported selection.

=== "Step IV: Interactive Selection"

    * Use the **Select** tool on the **Map** tab. The dropdown gives you the selection shape: *Rectangle*, *Polygon*, *Lasso*, *Circle* and *Line*. Draw the shape over the features you want.
    * Combine methods: first make a selection by attribute, then use the **Select** tool with *Add to selection* or *Remove from selection*, or run **Select By Location** with *Select from current selection*.
    * Use **Clear** to remove the selection and **Switch selection** to invert it.
    * Run the same selections with **Geoprocessing tools**: **Analysis** tab → **Tools** → *Select Layer By Attribute* and *Select Layer By Location*. These tools can be used in ModelBuilder and in Python scripts.
    * Properly save the ArcGIS Pro project (.aprx). Name it `Querying_project`.

=== "Step V: Final Checks & Submission"

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
