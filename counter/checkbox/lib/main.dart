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
       // body: const Checkboxclas
      ),
    );
  }
}
 class Checkboxclass extends StatefulWidget {
  const Checkboxclass({super.key});
  @override
  State<Checkboxclass> createState() => _CheckboxclassState();
}

class _CheckboxclassState extends State<Checkboxclass> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(children:[
      CheckboxListTile(
        value: isChecked, 
        activeColor: Colors.black38,
        title: const Text('Dart'),
        onChanged: (value){
          setState(() {
            isChecked= value!;
          },
          );
        },
      ),
      Text("$isChecked"),
    ]);
  }
}
    