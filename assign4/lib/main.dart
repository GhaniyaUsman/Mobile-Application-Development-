import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Number Grid'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Table(
              border: TableBorder.all(
                color: Colors.black,
                width: 1.0,
              ),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('One')),
                    ),
                    TableCell(
                      child: Center(child: Text('Two')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Three')),
                    ),
                    TableCell(
                      child: Center(child: Text('Four')),
                    ),
                    TableCell(
                      child: Center(child: Text('Five')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Six')),
                    ),
                    TableCell(
                      child: Center(child: Text('Seven')),
                    ),
                    TableCell(
                      child: Center(child: Text('Eight')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}