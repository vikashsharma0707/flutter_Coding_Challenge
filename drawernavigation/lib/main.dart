import 'package:drawernavigation/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

import 'screens/about_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/home': (ctx) => HomeScreen(),
        '/settings': (ctx) => SettingsScreen(),
        '/about': (ctx) => AboutScreen(),
      },
    );
  }
}
