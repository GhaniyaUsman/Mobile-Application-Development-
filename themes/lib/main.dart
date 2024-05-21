// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyAppStyleAndThemes());
}

class MyAppStyleAndThemes extends StatelessWidget {
MyAppStyleAndThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
        //   bodyLarge:   ,
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Style and Themes")
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("First Text",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("second Text",style: TextStyle(fontWeight: FontWeight.normal),),
              Text("third Text",style: TextStyle(fontWeight: FontWeight.normal),),
              Text("Fourth Text",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          )
        ),
      )
    );
  }
}