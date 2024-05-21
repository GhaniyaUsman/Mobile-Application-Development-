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
          title: Text('Container with Rows and Columns'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                // First Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                      child: Center(child: Text('Container 1')),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                      child: Center(child: Text('Container 2')),
                    ),
                  ],
                ),
                // Second Row
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      // First Row in Second Container
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            color: Colors.red,
                            child: Center(child: Text('Row 1, Container 3')),
                          ),
                          Container(
                            width: 150,
                            height: 150,
                            color: Colors.orange,
                            child: Center(child: Text('Row 1, Container 4')),
                          ),
                        ],
                      ),
                      // Second Row in Second Container
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            color: Colors.yellow,
                            child: Center(child: Text('Row 2, Container 3')),
                          ),
                          Container(
                            width: 150,
                            height: 150,
                            color: Colors.purple,
                            child: Center(child: Text('Row 2, Container 4')),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
