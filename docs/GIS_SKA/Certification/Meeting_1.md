# შეხვედრა 1 — რუკის შექმნა (Creating Maps)

---

## 📹 ვიდეო ჩანაწერი

[▶️ ვიდეოს ნახვა YouTube-ზ](https://www.youtube.com/)[ე](https://youtu.be/n6BTRHwxdVI?list=PLbXTWpffGagSwO4nDYQHGT0YYUyhosx_T)

| | |
|---|---|
| **ჩაწერის თარიღი** | 12.05.2026 |
| **კურსი** | Introduction to QGIS — Spatial Thoughts (Ujaval Gandhi) |
| **გამოყენებული სისტემა** | Linux Fedora KDE · QGIS Desktop on qgis-box · Podman Container |
| **შინაარსი** | 99% პრაქტიკული სამუშაო |

!!! info "ვიდეოს გამოყენების შეახებ"
    © ვიდეოს ჩაწერის ნებართვა მიღებულია აუდიტორიაშივე, ჩანაწერის გაკეთებამდე.
    ვიდეო განკუთვნილია ამ კურსის სტუდენტებისთვის სასწავლო მიზნებისთვის.

---

## 🎯 შეხვედრის მიზანი

ეს შეხვედრა არის **Spatial Thoughts-ის "Introduction to QGIS" კურსის** პირველი ეტაპი.

მიზანი: მომავალში სტუდენტმა შეძლოს ამ კურსის დამოუკიდებლად გავლა და **ოფიციალური QGIS სერტიფიკატის** მოპოვება.

🔗 [კურსის ოფიციალური გვერდი](https://courses.spatialthoughts.com/introduction-to-qgis.html)  
🏅 [სერტიფიკაციის შესახებ → იხ. ჩვენი გვერდი](./Certification.md)

---

## ⚙️ კურსის დაყენება (Setup)

სანამ კურსზე იმუშავებ, ეს ნაბიჯები სავალდებულოა:

### 1. QGIS ვერსია

!!! warning "გამოიყენე სწორი ვერსია"
    კურსი გათვლილია **QGIS LTR 3.44.x**-ზე.
    სხვა ვერსიაზე ინტერფეისი და ინსტრუმენტები შეიძლება განსხვავდებოდეს.

    [⬇️ QGIS გადმოწერა](https://qgis.org/download/)

### 2. მონაცემების ჩამოტვირთვა

კურსის ყველა სავარჯიშოსთვის საჭირო მონაცემები ერთ ZIP ფაილშია:

🔗 [კურსის მონაცემების ჩამოტვირთვა](https://courses.spatialthoughts.com/introduction-to-qgis.html#introduction)

გაშალე ZIP და გახსოვდეს **სად ინახება** — ყოველ სავარჯიშოში საჭირო გახდება.

### 3. Toolbar-ების ჩართვა

`View` → `Toolbars` მენიუში ჩართე:

- [ ] Map Navigation Toolbar
- [ ] Attributes Toolbar
- [ ] Digitizing Toolbar
- [ ] Advanced Digitizing Toolbar
- [ ] Shape Digitizing Toolbar
- [ ] Snapping Toolbar
- [ ] Label Toolbar
- [ ] Selection Toolbar

### 4. Plugin-ების ინსტალაცია

`Plugins` → `Manage and Install Plugins` → მოძებნე და დააინსტალირე:

| Plugin | გამოყენება |
|--------|-----------|
| **QuickMapServices** | ფონური რუკები (OpenStreetMap, Google...) |
| **QuickOSM** | OpenStreetMap-იდან მონაცემების ჩამოტვირთვა |

---

## 📚 შეხვედრაზე გავლილი — Module 1: Creating Maps

### სავარჯიშო 1.1 — ვექტორული მონაცემების იმპორტი

**Case study:** მნიშვნელოვანი მიწისძვრები 2000–2020 წლებში

**ისწავლე:**

- `Data Source Manager`-ით ფაილების გახსნა:
    - **Shapefile** (`.shp`) — ვექტორული ფორმატი
    - **GeoPackage** (`.gpkg`) — თანამედროვე ფორმატი
    - **Delimited Text** (`.csv`) — კოორდინატებიანი ცხრილი
- ატრიბუტული ცხრილის (`Attribute Table`) გახსნა და კითხვა
- `Select Features by Value` — ობიექტების შერჩევა მნიშვნელობით
- ფენების პანელი (`Layers Panel`) — ფენების რიგი და ხილვადობა

!!! tip "მთავარი გასაგები"
    **GIS-ში ყველაფერი ფენაა (Layer).** თითოეული ფენა ერთ მონაცემთა წყაროს წარმოადგენს.
    ფენების **რიგი** განსაზღვრავს, რომელი ზემოდან ჩანს.

---

### სავარჯიშო 1.2 — სიმბოლოები (Symbology)

**ისწავლე:**

- `Layer Properties` → `Symbology` — ფენის სტილის შეცვლა
- **Single Symbol** — ყველა ობიექტი ერთნაირი სიმბოლოთი
- **Categorized** — კატეგორიების მიხედვით სხვადასხვა ფერი
- **Graduated** — რიცხვითი მნიშვნელობების მიხედვით ზომა/ფერი
- **პროპორციული წრეები** — Data-driven size (მიწისძვრის სიმძლავრე → წრის ზომა)
- პროექციის შეცვლა **Equal Earth**-ზე (`Project` → `Properties` → CRS)

```
Layer Properties → Symbology
    ↓
Graduated → Column: mag (მაგნიტუდა)
    ↓
Method: Size → Min: 1px, Max: 10px
    ↓
Classify → OK
```

!!! note "Data-driven Symbology"
    როდესაც სიმბოლოს **ზომა ან ფერი** მონაცემის მნიშვნელობაზეა დამოკიდებული —
    ეს Data-driven ვიზუალიზაციაა. მიწისძვრების შემთხვევაში: **დიდი მაგნიტუდა = დიდი წრე.**

---

### სავარჯიშო 1.3 — ეტიკეტები (Labelling)

**ისწავლე:**

- `Layer Properties` → `Labels` → `Single Labels`
- **Expression-ბაზირებული ეტიკეტი** — ატრიბუტების გაერთიანება:
    ```
    "country" || '\n' || "mag"
    ```
    `||` — სიმბოლოების შეერთება (concatenation)  
    `'\n'` — ახალი ხაზი
- ეტიკეტის **ფონი** (background) და **callout line** — ისარი ობიექტიდან ეტიკეტამდე
- **Manual Placement** — ეტიკეტის ხელით გადატანა `Label Toolbar`-ით

!!! tip "QGIS Expression-ები"
    Expression-ები QGIS-ის ყველაზე ძლიერი ინსტრუმენტია —
    ეტიკეტებში, სიმბოლოებში, ველების გამოთვლაში. ბევრ სავარჯიშოში გამოჩნდება.

---

### სავარჯიშო 1.4 — ბეჭდვის განლაგება (Print Layout)

**ისწავლე:**

- `Project` → `New Print Layout` — ახალი განლაგების გახსნა
- ელემენტების დამატება:

    | ელემენტი | ღილაკი / მენიუ |
    |---------|---------------|
    | 🗺️ რუკა | Add Map |
    | 📝 სათაური | Add Label |
    | 🔑 ლეგენდა | Add Legend |
    | 📏 მასშტაბი | Add Scale Bar |
    | 🖼️ სურათი/ლოგო | Add Picture |
    | ⬜ ჩარჩო | Add Shape |

- `Export as Image` — PNG/JPG ფორმატში ექსპორტი
- `Export as PDF` — PDF ფორმატში ექსპორტი

!!! success "შედეგი"
    სავარჯიშოს ბოლოს გამოვა **მიწისძვრების პროფესიონალური რუკა** —
    სათაურით, ლეგენდით, მასშტაბური ზოლით, ლოგოთი.

---

## 📝 შენიშვნები შეხვედრიდან

!!! warning "Challenge დავალებები — გამოტოვებულია"
    თითოეული სავარჯიშოს ბოლოს კურსში არის **Challenge** ნაწილი.
    ამ შეხვედრაზე ეს ნაწილები **გამოტოვდა** — მომავალ ეტაპზე განახლდება.

    💡 **სახლში გასაკეთებელი:** სცადე Challenge-ები დამოუკიდებლად!
    კურსის ოფიციალური გვერდი განმარტებებს შეიცავს.

---

## 🏠 სახლში სავარჯიშო

სანამ მომდევნო შეხვედრაზე მოხვალ, გაიმეორე:

- [ ] **1.1** — გახსენი სხვადასხვა ფორმატის ფაილი (`.shp`, `.gpkg`, `.csv`)
- [ ] **1.2** — Graduated სიმბოლო სხვა ატრიბუტზე გამოიყენე
- [ ] **1.3** — expression-ით ეტიკეტი დაამატე 2+ ველის გაერთიანებით
- [ ] **1.4** — საკუთარი Print Layout გააკეთე, PDF-ად გაიხადე
- [ ] **Challenge** — კურსის Challenge ამოცანები სცადე

---

## 🔗 გამოყენებული თეორიული რესურსები

| რესურსი | ბმული |
|--------|-------|
| 🌐 OSDoc QGIS — საბაზო თეორია | [osdoc.qgis.ge](https://osdoc.qgis.ge) |
| 📘 GTU — პროექტის ფაილი | [gtu.qgis.ge/GIS_SKA/Theory/Project_file/](https://gtu.qgis.ge/GIS_SKA/Theory/Project_file/) |
| 📘 GTU — შეიპ-ფაილი | [gtu.qgis.ge/GIS_SKA/Theory/Shapefile/](https://gtu.qgis.ge/GIS_SKA/Theory/Shapefile/) |
| 📘 GTU — ვექტ. შრის შენახვა | [gtu.qgis.ge/GIS_SKA/Theory/Save_vector_layer/](https://gtu.qgis.ge/GIS_SKA/Theory/Save_vector_layer/) |
| 📘 GTU — სტილები QML/SLD | [gtu.qgis.ge/GIS_SKA/Theory/QML_SLD/](https://gtu.qgis.ge/GIS_SKA/Theory/QML_SLD/) |
| 🎓 Spatial Thoughts კურსი | [courses.spatialthoughts.com/introduction-to-qgis.html](https://courses.spatialthoughts.com/introduction-to-qgis.html) |

---

## ⏭️ მომდევნო შეხვედრა

**Module 2: Visualizing Spatial Data**

- ცხრილების Join (`Table Join`) — ვექტ. ფენა + CSV
- მონაცემების ნორმალიზაცია
- Choropleth რუკა — მოსახლეობის სიმჭიდროვე
