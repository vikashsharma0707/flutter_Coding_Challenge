


import 'package:flutter/material.dart';
import 'package:pagenavigation/screens/AboutScreen.dart';

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),

      body: Center(
        
        child:ElevatedButton(
          child: Text("Goto to About page"),
          onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Aboutscreen()));
          },
        )
      ),
    );
  }
}