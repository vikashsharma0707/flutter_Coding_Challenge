import 'package:bottomtab/widgets/bottomnav.dart';
import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Nav Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomNavBar(),
      debugShowCheckedModeBanner: false,

    
    );
  }
}
