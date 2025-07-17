// lib/screens/about_screen.dart
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text(
          'About Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
