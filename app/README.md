# GTU GIS app

Flutter WebView shell for https://gtu.qgis.ge: progress bar, Android/iOS back
navigation, offline retry screen, external links open in the system browser.

```bash
flutter pub get
flutter run
flutter build apk --release --split-per-abi   # smaller per-architecture APKs
```

Release builds are currently signed with the debug key; configure a real
keystore before publishing to Google Play.
