import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Assignment 1", style: TextStyle(color: Color.fromARGB(255, 112, 3, 122))),
        backgroundColor: const Color.fromARGB(255, 173, 103, 175)),
        body: Center(
          child: ClipOval(
          child: Container(
            width: 500, height: 300,
            color: Colors.black,
            padding: const EdgeInsets.all(20),
            child: ClipOval(
            child: Container(
              width: 400,
              height: 250,
              color: const Color.fromARGB(255, 78, 178, 236),
               padding: const EdgeInsets.all(20),

               child: ClipOval(
            child: Container(
              width: 300,
              height: 200,
              color: const Color.fromARGB(255, 236, 146, 93),
                padding: const EdgeInsets.all(20),
                
                child: ClipOval(
              child: Container(
              width: 200,
              height: 150,
              color: const Color.fromARGB(255, 101, 216, 91),
                padding: const EdgeInsets.all(20),
                child: ClipOval(
               child: Container(
              width: 50,
              height: 50,
              color: const Color.fromARGB(255, 197, 196, 202),
               padding: const EdgeInsets.all(20),
               child: ClipOval(
              child: Container(
              width: 20,
              height: 20,
              color: Colors.white,
                        )
               )
            )
                )
            )
                )
            )
               )
            )
            )
          ),
        
)
        )
      ),
    );
  }
}
