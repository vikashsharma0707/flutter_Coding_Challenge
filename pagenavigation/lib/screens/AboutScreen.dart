


import 'package:flutter/material.dart';
import 'package:pagenavigation/screens/HomeScreen.dart';

class Aboutscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("AboutScreen"),
      ),

      body: Center(
        
        child:ElevatedButton(
          child: Text("Goto to Home page"),
          onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Homescreen()));
          },
        )
      ),
    );
  }
}