<!-- https://cloud.mail.ru/public/js3t/PQ6wiuvrC -->
# გეორეფერენცირება

ვიდეო ჩანაწერებს ნახავ [აქ](https://gtu.qgis.ge/GIS_SKA/Videos/) <br>


### ოფიციალური დოკუმენტაცია <br>
QGIS Documentation - [Georeferencer](https://docs.qgis.org/3.40/en/docs/user_manual/managing_data_source/georeferencer.html#index-0) <br>
ფანჯარა - The Browser [panel](https://docs.qgis.org/3.40/en/docs/user_manual/introduction/browser.html#resources-that-can-be-opened-run-from-the-browser) <br>


### დამატებითი ბმულები <br>
თეორიული ნაწილი ინახება [აქ](https://gtu.qgis.ge/GIS_SKA/Theory/Georeferencing/) <br>
დამატებით ამავე [საკითხებზე](https://gtu.qgis.ge/GIS_SKA/Theory/Theory/) <br>


გარკვეული მასალები ინახება გუგლის საკლასო [ოთახში](https://classroom.google.com/c/Nzg3MzAxMDU4MzEy/m/Nzg3NTk5MzU2OTYw/details) ⚠️ <br>

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

=== "I ეტაპი: საქაღალდის ორგანიზება"
* QGIS - ში დააინსტალირეთ ფლაგინი [HCMGIS](https://plugins.qgis.org/plugins/HCMGIS/) და 
[QuickMapServices](https://plugins.qgis.org/plugins/quick_map_services/) საბაზისო რუკებისთვის.
* ჩამოტვირთეთ ტოპო [რუკა](https://github.com/ezdanapak/GTU-GIS/raw/e309e38dcb2aee7e2a7188eb2c755c394074f9c3/GIS_SKA/topo_map/K-38-51-G-b.jpg)
* შექმენით თქვენი სახელისა და გვარის საფუძველზე ახალი საქაღალდე. გამოიყენეთ ზემოთ მოცემული დასახელების წესები. მაგ: `"Giorgi_Kapanadze_Group_1_work_1_georeferencing"` <br>
* მის შიგნით შექმენით შემდეგი ქვე-საქაღალდეები:  
  - Raster  
  - Image  
  - Geoimage  

```mermaid
graph LR
  A[FirstName_LastName_GroupNumber_Assignment_Number] --> B{Raster};
  B -->|რეფერენცის გარეშე| C[Image];
  B -->|გეორეფერენცირებით| D[GeoImage];

```

დააკავშირეთ QGIS (Browser ფანჯრიდან) თქვენს მთავარ საქაღალდესთან.

---

=== "II ეტაპი: რუკის მომზადება"
* დავალების საქაღალდეში მოთავსებულია ერთი ტოპოგრაფიული რუკა.
* ჩამოტვირთეთ და განათავსეთ შესაბამის ქვე-საქაღალდეში.
* განახორციელეთ გეორეფერენცირება მართკუთხა კოორდინატებით (მეტრებში).
* განახორციელეთ გეორეფერენცირება სფერული კოორდინატებით (Degrees, Minutes, seconds).

---

=== "III ეტაპი: შემოწმება და გაგზავნა"
* გეორეფერენცირების შემდეგ გადაამოწმეთ რუკის მდებარეობა ნებისმიერი ხელმისაწვდომი მეთოდით — შეგიძლიათ გამოიყენოთ Google Earth 
ან QGIS და არ დაგავიწყდეს პირველ რიგში იმპორტით ნებისმიერი საბაზისო რუკის შემოტანა.. 🌍
* დარწმუნდით, რომ რუკა სწორად ემთხვევა მიზნობრივ ტერიტორიას. 🗺
* გააკეთეთ არქივი თქვენს საქაღალდეზე. 💾
* გამოიყენეთ `.rar` ან `.zip` ფორმატები. უპირატესობა მიანიჭეთ ZIP ფორმატს ⚠️
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

