# 🌍 რელიეფური მონაცემები და QGIS-ში მათი დამუშავება

## 🔍 რელიეფური მონაცემების არსი

რელიეფი წარმოადგენს დედამიწის ზედაპირის სიმაღლეების, დაქანებებისა და ფორმების ერთობლიობას. მისი ანალიზი აუცილებელია:

- გეომორფოლოგიური კვლევებისთვის  
- საფრთხეების შეფასებისთვის (მეწყერი, წყალდიდობა და სხვ.)  
- ინფრასტრუქტურის დაგეგმვისთვის  
- ლანდშაფტური მოდელირებისა და ვიზუალიზაციისთვის  

---

## 🛰️ რელიეფური მონაცემების ძირითადი წყაროები

### 1. **SRTM (Shuttle Radar Topography Mission)**
- გაფართოება: `.tif` (GeoTIFF)
- გლობალური დაფარვა: 30მ და 90მ რეზოლუციით
- წყარო: https://earthexplorer.usgs.gov/

### 2. **ASTER GDEM**
- გაფართოება: `.tif`
- გლობალური დაფარვა ~30მ რეზოლუციით
- წყარო: https://asterweb.jpl.nasa.gov/gdem.asp

### 3. **Copernicus DEM**
- გაფართოება: `.tif`
- მაღალი სიზუსტის რელიეფი (30მ და 10მ)
- წყარო: https://dataspace.copernicus.eu/

### 4. **ALOS PALSAR**
- გაფართოება: `.tif`
- დეტალური რელიეფური მონაცემები (12.5მ)
- წყარო: https://asf.alaska.edu/

### 5. **GeoPortal.ge (NAPR)**
- საქართველოს ეროვნული მონაცემები
- წყარო: https://www.geoportal.ge/

---

## 💻 QGIS-ში რელიეფური მონაცემების დამუშავება

### 📥 მონაცემების ჩატვირთვა

1. გახსენით QGIS  
2. Layer > Add Layer > Add Raster Layer  
3. აირჩიეთ თქვენი `.tif` ფორმატის რელიეფური ფაილი  

### 🗺️ ფერადი რელიეფის ვიზუალიზაცია

- Layer Styling Panel > Render type: Singleband pseudocolor  
- აირჩიეთ Color ramp (მაგ: `terrain`, `viridis`)  
- გაააქტიურეთ კლასი (`Mode`: Equal interval, Quantile და სხვ.)

### 📈 დახრის (Slope), ექსპოზიციის (Aspect) და ჩრდილების (Hillshade) გენერირება

1. Processing Toolbox > Raster Terrain Analysis  
2. გამოყენება:
   - **Slope** – დახრილობის რუკა  
   - **Aspect** – ჰორიზონტის მხარე   
   - **Hillshade** – სინათლის იმიტაცია რელიეფზე  

### 🌀 იზოხაზების (Contours) გენერირება

1. Processing Toolbox > Contour  
2. აირჩიეთ DEM  
3. Example:
   - Interval: 10 მ
   - Attribute name: ELEV  

### 🧮 რეკლასიფიკაცია (Reclassification)

1. Processing Toolbox > `Reclassify by table`  
2. გამოიყენეთ კლასი სიმაღლის დიაპაზონებით  
   - მაგ: 0–200 = დაბლობი  
   - 200–600 = ბორცვები  
   - 600+ = მთები  

### 🌐 TIN და 3D ვიზუალიზაცია

- გამოიყენეთ `TIN interpolation` და `3D Map View`  
- მასშტაბური რელიეფის წარმოდგენა მოცულობითი ფორმით  

---

## 📚 დამატებითი რესურსები

- [QGIS Terrain Analysis Documentation](https://docs.qgis.org/latest/en/docs/user_manual/processing_algs/qgis/rasteranalysis.html)
- [NASA SRTM Overview](https://www2.jpl.nasa.gov/srtm/)
- [QGIS Tutorials](https://www.qgistutorials.com/)

---
