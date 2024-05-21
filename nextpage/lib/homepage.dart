// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nextpage/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
        ),
        body: Column(
          children: [
            Text("second page", style: TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: () {
              Navigator.pop(context, MaterialPageRoute(
                builder: (context){
                  return Mainpage();
                }
              ));
            }, child: Text("go back to first page"))
          ],
        )
    ) ;
  }
}