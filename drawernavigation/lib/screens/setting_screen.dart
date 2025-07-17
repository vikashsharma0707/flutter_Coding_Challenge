// lib/screens/settings_screen.dart
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text(
          'Settings Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
