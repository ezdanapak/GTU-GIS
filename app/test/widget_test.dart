import 'package:flutter_test/flutter_test.dart';
import 'package:gtu_gis/src/web_shell.dart';

void main() {
  test('site URL points at the GTU GIS site', () {
    expect(Uri.parse(siteUrl).host, 'gtu.qgis.ge');
  });
}
