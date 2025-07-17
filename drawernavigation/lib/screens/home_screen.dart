// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text(
          'This is the Home Screen',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
