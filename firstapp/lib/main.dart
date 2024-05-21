import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Main Page',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: NetflixMainPage(),
    );
  }
}

class NetflixMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Row(
          children: [
            
            Image.asset(
              'images/net1.jpg',
              height: 70,
              width: 50 ,
              
            ),
            SizedBox(width: 8), // Add space between logo and search button
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 69, 68, 68), // Set grey background color
        
        child: ListView(
          scrollDirection: Axis.vertical,
          
          children: [
              Center(
            child: Container(
    padding: EdgeInsets.all(15), // Adjust padding as needed
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(900),
      
     // shape: BoxShape.circle // Adjust radius as needed
    ),
     child: Image.asset(
      'images/samdalri2.jpg', 
      fit: BoxFit.cover,
      height: 350,
      width: 250,
      
    ),
    
  ),
),

        
          _buildSection("Continue watching for Ghaniya", [
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(900)),
            border: Border.all(color:Colors.black26,width: 5),
            ),
        child:
             Image.asset(
            'images/Park-Hyung-Sik.jpg',
            fit: BoxFit.cover,
            width: 400,
            height: 175,
    ),
          
  ),
  Image.asset('images/hi.jpg', fit: BoxFit.cover, width: 500, height: 175),
  Image.asset('images/hi.jpg', fit: BoxFit.cover, width: 500, height: 175),
]),
          
            Divider(),
            _buildSection("Popular on Netflix", [
              Image.asset('images/hi.jpg', width: 500, height: 175),
              Image.asset('images/hi.jpg', fit: BoxFit.cover, width: 500, height: 175),
              Image.asset('images/hi.jpg', fit: BoxFit.cover, width: 500, height: 175),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
           itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 41, 40, 40),
                  ),
                  child: Center(
                    child: images[index],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}