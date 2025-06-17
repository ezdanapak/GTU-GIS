# გლობალური პოზიციონირების სისტემები

---
## დავალების ინსტრუქციები

⚠️ **სამუშაო გარემო**

უნივერსიტეტის კომპიუტერებზე იმუშავეთ შემდეგ საქაღალდეში:  
`C:\Users\Public\` ან `C:\Users\Public\Documents`  
*(რეკომენდებულია პირად კომპიუტერებზეც, რადგან პროგრამას სხვა ადგილას არსებული ფაილების დამუშავება შესაძლოა გაუჭირდეს.)*

📦 **საჭირო პროგრამები**

* QGIS – აუცილებელია ✅  
* Google Earth – სურვილისამებრ (დავალების მიხედვით) ✅  

---

!!!warning
    დასრულებული მასალა არ წაშალოთ სემესტრის ბოლომდე.
    
---

!!!danger 
    **ფაილების დასახელების წესები**

    ❌ **არასწორი:**  

    Giorgi Kapanadze.Group/1$ work1  

    ❌ არ გამოიყენოთ:

    - ქართული ასოები (ა, ბ, გ, დ და სხვ.)  
    - სპეციალური სიმბოლოები (გარდა ხაზგასმისა `_`)

    ✅ **სწორი:**  

    Giorgi_Kapanadze_Group_1_work_1  

!!!tip
    გამოიყენეთ მხოლოდ ლათინური ასოები, ციფრები და ხაზგასმა (`_`) შემდეგ შემთხვევებში:  
    არქივის სახელები, საქაღალდეებისა და ფაილების სახელები, ცხრილის სვეტების სახელები.

---

## 📘 ეტაპობრივი სახელმძღვანელო

!!!note
    მონაცემების ჩამოსატვირთად და დავალების ასატვირთად საჭიროა ავტორიზაცია გუგლის საკლასო ოთახზე
     : [classroom.google.com](https://classroom.google.com/)


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

დააკავშირეთ QGIS (Browser ფანჯრიდან) თქვენს მთავარ საქაღალდესთან.

---


=== "Step II: Doing imports"
* შემოიტანეთ GPS კოორდინატები როგორც shapefile. <br>
* შემოიტანეთ ფოტოსურათები გეოტეგით (geotagged photos) როგორც shapefile. <br>
* შექმენით ჰიპერბმულები ფოტოების შრეზე და დააწესეთ ფოტოების გამოჩენა pop-up ფანჯარაში. <br>
* წაშალეთ არასაჭირო ველები შრეებიდან — ან ატრიბუტული ცხრილის გამოყენებით, ან ArcToolbox-ით. <br>
* გარდაქმენით ფოტოების შრე ელipsoიდიდან UTM ზონაში და მოითვალეთ XY კოორდინატები შრის ცხრილში ArcToolbox-ის ან ხელით შესრულებული მეთოდების მეშვეობით. <br>
* შეინახეთ პროექტის ფაილი სახელით `"GPS_photo_coordinates"`. ასევე შეინახეთ სხვა `.mxd` ფაილი ძველი ვერსიებისთვის `"GPS_photo_coordinates10.0v"`. <br>
* ფოტოების გეოტეგირება შეგიძლიათ ხელითაც, ვებგვერდზე: [geoimgr](https://tool.geoimgr.com/), [GEOSETTER](https://geosetter.de/en/main-en/)


---

=== "ეტაპი IV: შემოწმება და გაგზავნა"
* გააკეთეთ არქივი თქვენს საქაღალდეზე. 💾
* გამოიყენეთ `.rar` ან `.zip` ფორმატები.
* დაარქვით არქივს შემდეგი ფორმატით:  
  `FirstName_LastName_GroupNumber_Assignment_Number`

* ატვირტეთ გუგლის საკლასო ოთახში ნამუშევარი

---

!!!warning
    თუ გაგზავნის პროცესში შეგექმნათ რაიმე პრობლემა, დაგვიკავშირდით:  
    g.kapanadze1908@gmail.com  
    ან გამოიყენეთ ნებისმიერი ფაილგადაცემის სერვისი. <br>

    https://www.swisstransfer.com/en-gb

    https://wetransfer.com/

    https://www.filemail.com/

    https://dropmefiles.com/

    https://www.swisstransfer.com/en-gb

    https://www.sendgb.com/

    https://workupload.com/ 

!!!info
    📌 თუ რაიმე გაუგებარია, თამამად იკითხე! 😊  
    თუ რამე არასწორადაა შესრულებული, გავასწორებ — ან თავად შექმენი pull request.  







