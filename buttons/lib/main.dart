import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorSelector(),
    );
  }
}

class ColorSelector extends StatefulWidget {
  @override
  _ColorSelectorState createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  Color? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 3,

              )
              ),
              padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Colorbox',
            style: TextStyle(
              fontSize: 15,
            ),),
            ListView(
              shrinkWrap: true,
              children: [
                RadioListTile<Color>(
                  title: Text('Red'),
                  value: Color.fromARGB(255, 255, 21, 0),
                  groupValue: _selectedColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                ),
                RadioListTile<Color>(
                  title: Text('Green'),
                  value: Colors.green,
                  groupValue: _selectedColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                ),
                RadioListTile<Color>(
                  title: Text('Blue'),
                  value: Colors.blue,
                  groupValue: _selectedColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 50,
              height: 50,
              color: _selectedColor ?? Colors.transparent,
            ),
          ],
        ),
      ),
    )
      ));

  }
}
