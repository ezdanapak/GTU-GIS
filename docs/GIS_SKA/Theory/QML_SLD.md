
# 🎨 QGIS QML ფორმატი

---

## 🧾 რა არის QML?

**QML (QGIS Markup Language)** არის ფაილის ფორმატი, რომელსაც QGIS იყენებს **სტილიზაციის (სტილის) პარამეტრების** შესანახად.

QML ფაილები ინახავენ ინფორმაციას როგორ უნდა გამოიყურებოდეს ფენა QGIS-ში:
- ფერების სქემა
- სიმბოლოები და შტრიხები
- ეტიკეტების სტილები
- ზომა, გამჭვირვალობა, ჩრდილები და სხვა ვიზუალური ეფექტები

---

## 📁 როგორ გამოიყურება QML ფაილი?

QML არის **XML ფორმატის ტექსტური ფაილი**, ანუ მისი წაკითხვა შესაძლებელია ნებისმიერი ტექსტური რედაქტორით (მაგ. Notepad, VS Code).

მაგალითად:
```xml
<qgis>
  <renderer-v2 type="singleSymbol">
    <symbol alpha="1" type="marker">
      <layer pass="0" class="SimpleMarker" locked="0">
        <prop k="color" v="255,0,0,255"/>
      </layer>
    </symbol>
  </renderer-v2>
</qgis>
```

---

## 🖌️ რას ინახავს QML ფაილი?

| კომპონენტი         | აღწერა |
|--------------------|--------|
| Renderer           | რომელი ტიპის სტილიზაციაა (მაგ. single symbol, categorized, graduated) |
| Symbol ან Rule     | კონკრეტული სტილის წესები და პარამეტრები |
| Labels             | ეტიკეტების პარამეტრები |
| Transparency       | გამჭვირვალობა |
| Geometry Generator | გეომეტრიის დამატებითი ვიზუალიზაცია |

---

## 📦 სად გამოიყენება QML?

- ✅ ფენის სტილის შენახვა და ხელახლა გამოყენება
- ✅ პროექტებს შორის ერთნაირი დიზაინის გაზიარება
- ✅ ლაბორატორიული დავალებების სტანდარტიზაცია
- ✅ სტილის სწრაფი გადატანა მრავალ ფენაზე

---

## 🧭 როგორ შევინახოთ და ჩავტვირთოთ QML?

### ➕ QML-ის შენახვა:
1. დააწკაპე ფენაზე მარჯვენა ღილაკით
2. აირჩიე **Properties**
3. გადადი **Symbology**
4. ქვედა ნაწილში აირჩიე **Style → Save Style → As QML...**

### 📂 QML-ის ჩატვირთვა:
1. Properties → Symbology
2. Style → **Load Style...**
3. აირჩიე შენახული `.qml` ფაილი

---

## 🧪 სტუდენტური გამოყენების მაგალითები

- ლაბორატორიული დავალების სტილიზაციის შენახვა
- ერთნაირი სტილის გამოყენება სხვადასხვა shapefile-ზე
- ჯგუფური მუშაობისას ფერის კოდის შეთანხმება
- ღირებულებების მიხედვით ფერის დაყოფა (graduated symbology)

---

## 🎓 რჩევები სტუდენტებისთვის:

- ყოველთვის შეინახე QML სტილი ცალკე ფაილად, რომ ხელახლა გამოიყენო.
- გამოიყენე სახელების სისტემა (მაგ. `roads_symbology.qml`, `population_label.qml`)
- ექსპორტი და იმპორტი შეგიძლია სხვა კომპიუტერზე ან მეგობართან.

---

## 📎 დამატებითი ბმულები:

- [QGIS Documentation: Saving and loading styles](https://docs.qgis.org/3.40/en/docs/user_manual/working_with_vector/vector_properties.html#saving-and-loading-styles)
- [QGIS Style Sharing](https://plugins.qgis.org/styles/)


# 🧾 QGIS SLD ფორმატი და შედარება QML-თან

---

## 🌐 რა არის SLD?

**SLD (Styled Layer Descriptor)** არის ღია სტანდარტის XML ფორმატის ფაილი, რომელიც გამოიყენება გეოგრაფიული ფენების სტილიზაციის განსასაზღვრად. ის განავითარა OGC-მა (Open Geospatial Consortium), რათა სხვადასხვა GIS სისტემებს შეეძლოთ სტილის ინფორმაციის გაზიარება.

---

## 📁 როგორ გამოიყურება SLD ფაილი?

SLD არის XML ტექსტური ფაილი. მაგალითად:

```xml
<StyledLayerDescriptor version="1.0.0">
  <NamedLayer>
    <Name>MyLayer</Name>
    <UserStyle>
      <Title>Red Points</Title>
      <FeatureTypeStyle>
        <Rule>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#FF0000</CssParameter>
                </Fill>
              </Mark>
              <Size>6</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>


# 📦 SLD-ის გამოყენების სფეროები

**Styled Layer Descriptor (SLD)** არის **OGC** სტანდარტი, რომელიც გამოიყენება **GIS** სისტემებში რუკების სტილიზაციისთვის. ძირითადი გამოყენების სფეროები:

- 🌍 **GeoServer**, **MapServer**, **Web Map Services (WMS)**: **SLD** სტანდარტულად გამოიყენება ამ პლატფორმებში.
- 🔄 **სტილის გადატანა**: **QGIS**-სა და სხვა GIS სერვერებს შორის სტილის გაზიარება.
- 🌐 **ინტერნეტ რუკების სტილიზაცია**: ვებ-რუკების ვიზუალური გაფორმება.

---

## 📂 **SLD**-ის გამოყენება **QGIS**-ში

### **ექსპორტი**
1. გადადი: **Properties → Symbology → Style → Save Style...**
2. აირჩიე **.sld** ფორმატი.

### **იმპორტი**
1. გადადი: **Properties → Symbology → Style → Load Style...**
2. აირჩიე **.sld** ფაილი.

---

## 🔄 **QML** vs **SLD**: შედარება

| **მახასიათებელი**       | **QML**                              | **SLD**                              |
|--------------------------|--------------------------------------|--------------------------------------|
| **ფორმატი**             | **XML** (QGIS-ის შიდა სტილი)        | **XML** (OGC სტანდარტი)             |
| **მხარდაჭერა**          | მხოლოდ **QGIS**                     | **QGIS**, **GeoServer**, **MapServer** |
| **გამოყენება**         | ლოკალური პროექტები                 | ვებ-რუკები, **GIS** სერვერები      |
| **ფუნქციონალი**         | ფართო, მოქნილი                    | სტანდარტიზებული, ზოგჯერ შეზღუდული  |
| **გამოყენების სფერო**   | ლაბორატორიები, საველე სამუშაოები   | ვებ-რუკები, **GeoServer** პუბლიკაცია |

---

## 🎓 სტუდენტებისთვის **რეკომენდაციები**

| **სიტუაცია**                        | **გამოიყენე QML** | **გამოიყენე SLD** |
|--------------------------------------|:-----------------:|:-----------------:|
| ლოკალური პროექტებში მუშაობა         | ✅                | ❌                |
| სტილის გაზიარება **QGIS**-იდან **QGIS**-ში | ✅         | ❌                |
| **GeoServer**-თან მუშაობა           | ❌                | ✅                |
| **WMS** რუკების სტილიზაცია          | ❌                | ✅                |
| სრული კონტროლი სტილზე              | ✅                | ❌                |

---

## 📎 **დამატებითი რესურსები**
- 📖 [QGIS Documentation: SLD Support](https://docs.qgis.org/latest/en/docs/user_manual/working_with_vector/vector_properties.html#style-menu)
- 📜 [OGC Styled Layer Descriptor Specification](https://www.ogc.org/standards/sld)