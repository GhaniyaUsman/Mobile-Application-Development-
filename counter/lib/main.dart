import 'package:flutter/material.dart';

void main() {
  runApp(MyAppStateful());
}

class MyAppStateful extends StatelessWidget {
  const MyAppStateful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
        ),
        body: StatefulClass(),
      ),
    );
  }
}

class StatefulClass extends StatefulWidget {
  const StatefulClass({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatefulClassState();
}

class _StatefulClassState extends State<StatefulClass> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("Counter"),
        ),
        SizedBox(height: 20),
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            color: Colors.amberAccent,
          ),
          child: Center(
            child: count < 5 ? Text("$count") : Text("Welcome"),
          ),
        )
      ],
    );
  }
}