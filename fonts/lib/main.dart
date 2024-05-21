import 'package:flutter/material.dart';

void main() {
  runApp(const MyCustomFont());
}

class MyCustomFont extends StatelessWidget {
  const MyCustomFont({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Custom Font",
          ),
        ),
      body: const Text("Hello WORLD",
       style: TextStyle(
        fontSize: 40, 
        fontFamily: 'Schyler'),),
      ),
    );
  }
}