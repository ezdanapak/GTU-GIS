
# GeoJSON-ის ფორმატები QGIS-დან და ArcGIS Pro-დან

GeoJSON არის სივრცული მონაცემების გადაცვლის ფორმატი, რომელიც დაფუძნებულია JSON სტრუქტურაზე და ფართოდ გამოიყენება ვებ რუკებსა და GIS პროგრამებში.

## 📌 1. QGIS – Newline Delimited GeoJSON (`.geojsonl` ან `.ndgeojson`)

- **აღწერა**: თითოეული ხაზზე მოთავსებულია ერთი GeoJSON ობიექტი (Feature).
- **გამოყენება**: სასარგებლოა დიდი მონაცემების ნაკადის (streaming) ან პარალელური დამუშავებისთვის.
- **QGIS ექსპორტი**: ექსპორტისას აირჩიეთ _Newline delimited GeoJSON_.
- **მაგალითი**:

```
{"type":"Feature","geometry":{"type":"Point","coordinates":[41.7,44.8]},"properties":{"name":"თბილისი"}}
{"type":"Feature","geometry":{"type":"Point","coordinates":[42.2,42.3]},"properties":{"name":"ქუთაისი"}}
```

---

## 📌 2. QGIS – სტანდარტული GeoJSON

- **აღწერა**: მთელი FeatureCollection ერთიან JSON სტრუქტურაშია მოთავსებული.
- **გამოყენება**: ზოგად მიზნებისთვის, ვებ რუკებზე გამოსატანად.
- **QGIS ექსპორტი**: აირჩიეთ _GeoJSON_.
- **მაგალითი**:

```json
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "geometry": {
        "type": "Point",
        "coordinates": [41.7, 44.8]
      },
      "properties": {
        "name": "თბილისი"
      }
    },
    {
      "type": "Feature",
      "geometry": {
        "type": "Point",
        "coordinates": [42.2, 42.3]
      },
      "properties": {
        "name": "ქუთაისი"
      }
    }
  ]
}
```

---

## 📌 3. ArcGIS Pro – Formatted GeoJSON

- **აღწერა**: სტანდარტულად ფორმატირებული (დამუშავებული) JSON სტრუქტურა, ადვილად წასაკითხი ადამიანისთვის.
- **ArcGIS Pro**: ექსპორტისას შესაძლებელია JSON ფორმატში შენახვა და გაფორმება.
- **გამოყენება**: კოდში ჩასაწერად, გადაცემისთვის API-ს საშუალებით.

```json
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "geometry": {
        "type": "Point",
        "coordinates": [43.0, 41.9]
      },
      "properties": {
        "name": "ბათუმი"
      }
    }
  ]
}
```

---

## 📌 4. ArcGIS Pro – Non-formatted (Minified) GeoJSON

- **აღწერა**: ყველა ინფორმაცია ერთ ხაზზეა – კომპაქტური ფორმატია.
- **გამოყენება**: როდესაც მნიშვნელოვანია ფაილის ზომა ან გადაცემის სიჩქარე.
- **მაგალითი**:

```
{"type":"FeatureCollection","features":[{"type":"Feature","geometry":{"type":"Point","coordinates":[43.0,41.9]},"properties":{"name":"ბათუმი"}}]}
```

---

## 🔚 შეჯამება

| ფორმატი                    | ფორმატირებული | მრავალ ხაზზე | გამოყენება |
|---------------------------|---------------|--------------|------------|
| QGIS – Newline delimited  | ❌             | ✅            | Data streaming |
| QGIS – Standard GeoJSON   | ✅             | ✅            | ვებ რუკები |
| ArcGIS Pro – Formatted        | ✅             | ✅            | კოდის ანალიზი |
| ArcGIS Pro – Minified         | ❌             | ❌            | სწრაფი გადაცემა |

