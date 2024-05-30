import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          appBar: AppBar(title: const Text('Container Properties')),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.66,
                      // color: Colors.red,
                       decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child:Center(child: Text('First')),
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.33,
                      // color: const Color.fromARGB(255, 86, 244, 54),
                       decoration: BoxDecoration(
              
                             child: Center(child: Text('Six')),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width * 0.33,
                                  // color: Color.fromARGB(255, 1, 10, 245),
                                   decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                     child: Center(child: Text('Four')),
                                ),
                                Container(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width * 0.33,
                                  // color: Color.fromARGB(255, 230, 5, 144),
                                   decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                     child: Center(child: Text('Seven')),
                                ),
                              ],
                            ),
                            Column(
                   
                      ],
                    ),
                   
                  ],
                ),
              ],
            ),
	          border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                         child: Center(child: Text('Second')),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.33,
                          // color: Color.fromARGB(255, 54, 60, 244),
                           decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                             child: Center(child: Text('third')),
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.33,
                          // color: Color.fromARGB(255, 54, 244, 228),
                           decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),


           children: [
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width * 0.33,
                                  // color: Color.fromARGB(255, 83, 218, 112),
                                   decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                     child: Center(child: Text('Five')),
                                ),
                              ],
                            ),
                         
                          ],
                        ),
                           Row(
                          children: [
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width * 0.66,
                            
                               decoration: BoxDecoration(
                                border: Border.all(
                             color: Color.fromARGB(255, 46, 81, 152),
                                  width: 2,
                                ),
                              ),
                                 child: Center(child: Text('Eight')),
                            ),
                          ],
                        ),





          );
    // ),
    // );
  }
}
