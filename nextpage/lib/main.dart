// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nextpage/homepage.dart';

void main() {
  runApp(const MyAppRouting());
}
class  MyAppRouting extends StatelessWidget {
  const MyAppRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
        child:Column(children: [
          Text("Welcome"),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return HomePage();
                }
                ));
            }, 
            child: Text('next')
            )
        ],) ,
        )
    );
  }
}