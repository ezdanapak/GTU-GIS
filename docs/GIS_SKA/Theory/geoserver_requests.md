# 🌍 GeoServer სერვისების მაგალითები და განმარტებები

GeoServer მხარს უჭერს OGC (Open Geospatial Consortium) სტანდარტებს: **WMS, WFS, WCS, WMTS**.  
ქვემოთ მოცემულია ყველაზე ხშირი request–ები მაგალითებითა და ახსნებით.

---

## 🗺️ 1. WMS (Web Map Service)

WMS ბრუნებს რუკის გამოსახულებას (PNG, JPEG).

### GetCapabilities
```http
http://localhost:8080/geoserver/ows?service=WMS&request=GetCapabilities
```
👉 აბრუნებს სერვერზე ხელმისაწვდომი ფენებისა და პარამეტრების აღწერას (XML ფორმატში).

---

### GetMap
```http
http://localhost:8080/geoserver/ows?service=WMS&version=1.1.0&request=GetMap&
layers=topp:states&styles=&bbox=-124.731422,24.955967,-66.969849,49.371735&
width=800&height=600&srs=EPSG:4326&format=image/png
```
👉 აბრუნებს რუკის სურათს მითითებული ფენით (`topp:states`) მოცემულ bounding box-ში.

- **layers** – ფენის სახელი (workspace:layer)  
- **srs / crs** – კოორდინატების სისტემა (EPSG კოდი)  
- **bbox** – რუკის საზღვრები (მინ/მაქს კოორდინატები)  
- **width / height** – გამოსახულების ზომა  
- **format** – გამოსახულების ფორმატი  

---

### GetFeatureInfo
```http
http://localhost:8080/geoserver/ows?service=WMS&version=1.1.1&request=GetFeatureInfo&
layers=topp:states&query_layers=topp:states&info_format=application/json&
x=200&y=150&bbox=-124.731422,24.955967,-66.969849,49.371735&
width=800&height=600&srs=EPSG:4326
```
👉 აბრუნებს ობიექტის ატრიბუტებს **კონკრეტულ წერტილზე დაწკაპებისას**.

---

## 📄 2. WFS (Web Feature Service)

WFS ბრუნავს ვექტორულ მონაცემს (GML, GeoJSON).

### GetCapabilities
```http
http://localhost:8080/geoserver/ows?service=WFS&request=GetCapabilities
```
👉 აბრუნებს ხელმისაწვდომ ფენებსა და მხარდაჭერილ ოპერაციებს.

---

### DescribeFeatureType
```http
http://localhost:8080/geoserver/ows?service=WFS&version=1.0.0&
request=DescribeFeatureType&typeName=topp:states
```
👉 აბრუნებს ფენის სქემას (ატრიბუტების სტრუქტურა).

---

### GetFeature
```http
http://localhost:8080/geoserver/ows?service=WFS&version=1.0.0&
request=GetFeature&typeName=topp:states&outputFormat=application/json
```
👉 აბრუნებს ფენის ობიექტებს GeoJSON ფორმატში.

---

## 🌐 3. WCS (Web Coverage Service)

WCS ბრუნავს რასტრულ მონაცემს (GeoTIFF და სხვა).

### GetCapabilities
```http
http://localhost:8080/geoserver/ows?service=WCS&request=GetCapabilities
```
👉 აბრუნებს ხელმისაწვდომ რასტრულ მონაცემებს.

---

### DescribeCoverage
```http
http://localhost:8080/geoserver/ows?service=WCS&version=1.0.0&
request=DescribeCoverage&coverage=topp:mosaic
```
👉 აბრუნებს მითითებული რასტრის აღწერას.

---

### GetCoverage
```http
http://localhost:8080/geoserver/ows?service=WCS&version=1.0.0&
request=GetCoverage&coverage=topp:mosaic&crs=EPSG:4326&
bbox=-180,-90,180,90&width=800&height=600&format=GeoTIFF
```
👉 აბრუნებს მოცემული bbox-ის ფარგლებში raster dataset-ს GeoTIFF ფორმატში.

---

## 🧩 4. WMTS (Web Map Tile Service)

WMTS ბრუნავს წინასწარ დაყოფილ რუკის ტაილებს.

### GetCapabilities
```http
http://localhost:8080/geoserver/gwc/service/wmts?request=GetCapabilities
```
👉 აბრუნებს ხელმისაწვდომ ტაილურ სერვისებს.

---

### Tile request მაგალითი
```http
http://localhost:8080/geoserver/gwc/service/wmts?
layer=topp:states&style=&tilematrixset=EPSG:4326&
Service=WMTS&Request=GetTile&Version=1.0.0&
Format=image/png&TileMatrix=EPSG:4326:2&TileCol=1&TileRow=1
```
👉 აბრუნებს რუკის ერთ ტაილს მითითებული ზუმის, რიგისა და სვეტის მიხედვით.

---

# 🔑 შეჯამება
- **WMS** – აბრუნებს რუკის სურათს  
- **WFS** – აბრუნებს ვექტორ მონაცემს (GeoJSON, GML)  
- **WCS** – აბრუნებს რასტრს (GeoTIFF)  
- **WMTS** – აბრუნებს წინასწარ დაყოფილ ტაილებს

---
