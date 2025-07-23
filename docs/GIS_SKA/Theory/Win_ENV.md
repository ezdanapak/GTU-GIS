# 💻 Windows Environment და GeoServer-ის კონფიგურაცია

---

## 🧭 რა არის **Windows Environment**?

**Windows Environment** ნიშნავს იმ ოპერაციულ სისტემას, რომელშიც მომხმარებელი მუშაობს (მაგ. Windows 10, 11) და ასევე მისი გარემოს ცვლადები, პროგრამები, ბიბლიოთეკები და ფაილების სტრუქტურა.

**მთავარი კომპონენტები:**
- 📂 ფაილური სისტემა (C:\, D:\ და ა.შ.)
- ⚙️ გარემოს ცვლადები (Environment Variables)
- 🧩 დაინსტალირებული პროგრამები (.exe)
- 🔁 პროცესები და სერვისები (Services, Startup apps)

* Windows Environment არის კომპიუტერის სამუშაო გარემო, სადაც მუშაობს ყველა პროგრამა, მათ შორის Java, Python, QGIS და GeoServer.

---

## 🌍 GeoServer Windows Environment-ში

GeoServer არის ღია კოდის სერვერული პროგრამა, რომელიც მუშაობს Java პლატფორმაზე. GeoServer-ს სჭირდება:

- ✅ სწორად გაწერილი **Java გარემო** (JDK ან JRE)
- ✅ სერვერული სივრცე (საქაღალდეები, ბიბლიოთეკები)
- ✅ Windows-ის შესაძლებლობა **სკრიპტების (BAT) გაშვებისათვის**

### GeoServer-ს Windows-ში აქვს ორი გაშვების გზა:
1. **ZIP ვერსია** – გაშვება `startup.bat` ფაილით  
2. **Windows Installer (EXE)** – ავტომატური დაყენება როგორც სერვისი

---

## ⚙️ Java გარემოს კონფიგურაცია (GeoServer-ისთვის)

1. გადმოწერე Temurin OpenJDK:  
   🔗 https://adoptium.net/en-GB/temurin/releases

2. დააყენე JDK (რეკომენდებულია JDK 17)

3. აწერე გარემოს ცვლადი:

   - Variable Name: `JAVA_HOME`  
   - Variable Value: `C:\Program Files\Eclipse Adoptium\jdk-17.x.x`

4. დაამატე ეს გზა სისტემურ **Path** ცვლადში:
   ```
   %JAVA_HOME%\bin
   ```

5. გადაამოწმე `cmd`-ში:

   ```bash
   java -version
   ```

---

## 🚀 GeoServer-ის გაშვება Windows-ზე

### ვარიანტი 1: ZIP ვერსია

1. გადმოწერე GeoServer ZIP არქივი:  
   🔗 https://geoserver.org/download

2. გაშალე საქაღალდეში (მაგ: `C:\geoserver`)

3. გაუშვი `startup.bat` ფაილი `bin` საქაღალდიდან

---

## 📌 მაგალითი: რა ხდება Windows Environment-ში

| ელემენტი | აღწერა |
|----------|--------|
| `JAVA_HOME` | გარემოს ცვლადი, რომელიც მიუთითებს Java-ს მდებარეობას |
| `startup.bat` | Windows სკრიპტი GeoServer-ის გასაშვებად |
| `%PATH%` | სისტემური ცვლადი, რომელიც აძლევს წვდომას `java.exe`-ზე |
| `C:\geoserver\data_dir` | GeoServer-ის მონაცემების დირექტორია |
| `localhost:8080/geoserver` | ბრაუზერიდან GeoServer UI-ზე წვდომის მისამართი |

---

## 🧠 რატომ არის ეს მნიშვნელოვანი?

- Windows Environment-ს სწორი კონფიგურაცია განსაზღვრავს, იმუშავებს თუ არა GeoServer.
- Java გარემოს გარეშე GeoServer ვერ გაეშვება.
- სტუდენტებმა უნდა იცოდნენ როგორ გაიშვას სერვერული აპლიკაციები და როგორ იმუშაონ სისტემურ ცვლადებთან.

---

## 📚 დამატებითი რესურსები

- [GeoServer User Guide](https://docs.geoserver.org)
- [JAVA_HOME – ოფიციალური ახსნა](https://learn.microsoft.com/en-us/java/openjdk/install)
- [Adoptium Temurin](https://adoptium.net)
