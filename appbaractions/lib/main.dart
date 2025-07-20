import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Example'),
        centerTitle: true,
        backgroundColor: Colors.blue,

        // 👇 Actions are added here (icon buttons on the right)
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search tapped');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print('Notifications tapped');
            },
          ),
        ],
      ),
      body: Center(child: Text('Hello Flutter!')),
    );
  }
}
