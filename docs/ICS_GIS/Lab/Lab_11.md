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
    * 30 ready-to-use expression examples are in the [SQL Expression Examples](#sql-expression-examples) section below.
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

## SQL Expression Examples

Use these in **Select By Attributes** (and in a **Definition Query**). The field names (`AREA`, `LAND_USE`, `NAME`, `OWNER`, `PARCEL_ID`, `FLOORS`, `PRICE`, `REG_DATE`) are **placeholders**: choose the real fields of your layer from the field list and click **Verify** before you apply. Text values go in single quotes, numbers without quotes. The examples are for a file geodatabase.

### Comparison operators

| # | Goal | Expression |
|---|---|---|
| 1 | Area equals 500 | `AREA = 500` |
| 2 | Area greater than 1000 | `AREA > 1000` |
| 3 | Area at least 500 | `AREA >= 500` |
| 4 | Area smaller than 200 | `AREA < 200` |
| 5 | Area at most 200 | `AREA <= 200` |
| 6 | Everything except forest | `LAND_USE <> 'forest'` |

### Text: equality and LIKE patterns

| # | Goal | Expression |
|---|---|---|
| 7 | Exact text match | `LAND_USE = 'residential'` |
| 8 | Name starts with "Chi" | `NAME LIKE 'Chi%'` |
| 9 | Name ends with "ura" | `NAME LIKE '%ura'` |
| 10 | Name contains "mine" | `NAME LIKE '%mine%'` |
| 11 | One unknown character (_) | `NAME LIKE 'C_iatura'` |
| 12 | Case-insensitive match | `UPPER(NAME) = 'CHIATURA'` |
| 13 | Contains "school", any case | `LOWER(NAME) LIKE '%school%'` |
| 14 | Name longer than 10 characters | `CHAR_LENGTH(NAME) > 10` |
| 15 | First two characters of the ID are "37" | `SUBSTRING(PARCEL_ID FROM 1 FOR 2) = '37'` |

### Lists and ranges

| # | Goal | Expression |
|---|---|---|
| 16 | One of several values | `LAND_USE IN ('residential', 'commercial')` |
| 17 | None of several values | `LAND_USE NOT IN ('forest', 'water')` |
| 18 | Inside a range (both ends included) | `AREA BETWEEN 300 AND 800` |
| 19 | Outside a range | `AREA NOT BETWEEN 300 AND 800` |

### Empty values

| # | Goal | Expression |
|---|---|---|
| 20 | Owner is not filled in | `OWNER IS NULL` |
| 21 | Owner is filled in | `OWNER IS NOT NULL` |

### Logical operators (AND, OR, NOT)

| # | Goal | Expression |
|---|---|---|
| 22 | Both conditions are true | `AREA > 500 AND LAND_USE = 'residential'` |
| 23 | At least one is true | `LAND_USE = 'forest' OR LAND_USE = 'water'` |
| 24 | Negation | `NOT LAND_USE = 'forest'` |
| 25 | Brackets set the order | `(AREA > 1000 OR FLOORS >= 5) AND OWNER IS NOT NULL` |
| 26 | Several conditions together | `AREA > 500 AND AREA < 1000 AND LAND_USE IN ('residential', 'commercial') AND OWNER IS NOT NULL` |

### Calculations and dates

| # | Goal | Expression |
|---|---|---|
| 27 | Arithmetic between fields | `PRICE / AREA > 100` |
| 28 | Arithmetic with a number | `FLOORS * 3 > 12` |
| 29 | Registered after a date | `REG_DATE >= date '2024-01-01'` |
| 30 | Registered in one year | `EXTRACT(YEAR FROM REG_DATE) = 2023` |

### Data source differences

| | File geodatabase (.gdb) | Shapefile (.shp) | Personal geodatabase (.mdb) |
|---|---|---|---|
| Text wildcards | `%` and `_` | `%` and `_` | `*` and `?` |
| Date value | `date '2024-01-01'` | `date '2024-01-01'` | `#2024-01-01#` |
| Field names | up to 64 characters | up to 10 characters | up to 64 characters |
| SQL support | most functions | limited subset | limited subset |

Pick fields from the list instead of typing them: the expression builder adds the right delimiters for the data source. Not every function from the examples works in every format; if **Verify** reports an error, simplify the expression.

---

!!!warning
    If you experience any issues with the submission process, contact:  
    giorgi.kapanadze@gtu.ge  
    Or use any file transfer services.

!!!info
    📌 If anything is unclear, feel free to ask! 😊  
    If something here was done incorrectly, I’ll correct it — or you can create a pull request.
