import 'package:flutter/material.dart';

void main() {
  runApp(const MyClassAssignment());
}

class MyClassAssignment extends StatelessWidget {
  const MyClassAssignment({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cardwidget",
          ),
                  ),
        body: Card(
          elevation: 15,
          shadowColor: Color.fromARGB(255, 159, 109, 190),

          child: 
          Container(
            width: 100,
            height: 100,
            color: Colors.black12,
          child: MyWidgetStacky(),

          )

                  )
              ),
    );
  }
}

class MyWidgetStacky extends StatelessWidget {
  const MyWidgetStacky({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.amber,
        ),
        Container(
          width: 70,
          height: 70,
          color: const Color.fromARGB(255, 99, 99, 97),
        ),
         Container(
          width: 50,
          height: 50,
          color: Color.fromARGB(255, 245, 245, 4),
        ), 
      ]

    );
  }
}