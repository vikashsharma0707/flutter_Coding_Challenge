


import 'package:flutter/material.dart';
import 'package:pagenavigation/screens/HomeScreen.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Navigation",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:Homescreen() ,
      debugShowCheckedModeBanner: false,
    );
  }
}