import 'package:flutter/material.dart';

import 'src/web_shell.dart';

void main() => runApp(const GtuGisApp());

class GtuGisApp extends StatelessWidget {
  const GtuGisApp({super.key});

  static const _seed = Color(0xFF7650FF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GTU GIS',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: _seed),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: _seed,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const WebShell(),
    );
  }
}
