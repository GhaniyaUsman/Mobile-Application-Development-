import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'My Portfolio',
theme: ThemeData(
scaffoldBackgroundColor: Color.fromARGB(255, 164, 160, 160),
primaryColor: Colors.white,
visualDensity: VisualDensity.adaptivePlatformDensity,
),
home: HomeScreen(),
);
}
}

class HomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Portfolio'),
),
body: SingleChildScrollView(
child: Center(
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
SizedBox(height: 20),
Container(
width: 150,
height: 150,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.grey, // Placeholder color
),
child: ClipOval(
child: Image.asset(
'images/abc.png', // Replace with your image path
fit: BoxFit.cover,
width: 150,
height: 150,
),
),
),
SizedBox(height: 20),
Text(
'Ghaniya Usman',
style: TextStyle(
color: Colors.white,
fontSize: 24,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 20),
SizedBox(
width: double.infinity,
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Text(
'City',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 5),
Container(
height: 100,
width: double.infinity,
padding: const EdgeInsets.all(20.0),
decoration: BoxDecoration(
color: Color.fromARGB(255, 196, 95, 95),
borderRadius: BorderRadius.circular(30),
),
child: Center(
child: Text(
'Lahore, Pakistan',
style: TextStyle(
color: Colors.white,
fontSize: 18,
),
),
),
),
],
),
),
SizedBox(height: 10),
SizedBox(
width: double.infinity,
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Text(
'Qualification',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 5),
Container(
height: 100,
width: double.infinity,
//padding: const EdgeInsets.all(20.0),
decoration: BoxDecoration(
color: Color.fromARGB(255, 0, 0, 0),
borderRadius: BorderRadius.circular(30),
),
child: Center(
child: Text(
'Bachelor of information engineering technology',
style: TextStyle(
color: Colors.white,
fontSize: 18,
),
),
),
),
],
),
),
SizedBox(height: 20),
Text(
'Skills',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 10),
InkWell(
onTap: () {},
child: Container(
padding: const EdgeInsets.all(20.0),
decoration: BoxDecoration(
color: Color.fromARGB(255, 196, 95, 95),
borderRadius: BorderRadius.circular(30),
),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
SkillItem(skill: 'C++'),
SkillItem(skill: 'HTML'),
SkillItem(skill: 'CSS'),
SkillItem(skill: 'JS'),
// Add more skills here...
],
),
),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
SkillItem(skill: 'Git Hub'),
SkillItem(skill: 'SQL'),
SkillItem(skill: 'Flutter'),
SkillItem(skill: 'Dart'),
// Add more skills here...
],
),
),
],
),
),
),
SizedBox(height: 20),
Text(
'Projects',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
SizedBox(
height: 10,
width: 50,
),
Padding(
padding: const EdgeInsets.symmetric(horizontal: 20.0),
child: Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ProjectCard(
projectName: '24-hour Digital Clock',
imagePath: 'images/DC.jpeg',
description:
'A digital clock, designed through Digital Logic Design (DLD), employs electronic circuits to display time numerically. The design involves meticulous integration of logic elements to ensure reliable timekeeping and user-friendly functionality',
),
ProjectCard(
projectName: 'Robotic Car',
imagePath: 'images/robotic_car.jpeg',
description:
'A robotic car, engineered with advanced robotics technology, autonomously navigates and performs tasks. Its design integrates sensors, actuators, and microcontrollers to perceive surroundings, make decisions, and execute movements. ',
),
],
),
SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ProjectCard(
projectName: 'Smart Bin',
imagePath: 'images/smartbin.jpg',
description:
'An autonomous smart bin incorporates sensor technology and artificial intelligence to revolutionize waste management. Equipped with sensors for volume detection and sorting, it autonomously identifies and categorizes waste.',
),
ProjectCard(
projectName: 'Travel App',
imagePath: 'images/travelapp.jpeg',
description:
'A travel app revolutionizes trip planning and exploration, offering users a comprehensive platform to organize and navigate their journeys. Integrating features like itinerary creation, accommodation booking, and destination discovery, it simplifies the entire travel experience. ',
),
],
),
SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Text(
'Courses',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
SizedBox(
height: 10,
width: 50,
),
Row(
children: [
Container(
margin: EdgeInsets.only(left: 140),
padding: const EdgeInsets.all(20.0),
decoration: BoxDecoration(
color: Color.fromARGB(255, 4, 4, 5),
borderRadius: BorderRadius.circular(30),
),
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
'Agile with Jira Atlassian',
style: TextStyle(
color: Colors.white,
fontSize: 18,
),
),
Text(
'DevOps course continue with Udemy',
style: TextStyle(
color: Colors.white,
fontSize: 18,
),
),
Text(
'Web development by Programming Hero',
style: TextStyle(
color: Colors.white,
fontSize: 18,
),
),
],
),
),
],
),
],
),
),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Text(
'Achievements',
style: TextStyle(
color: Colors.white,
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 10),
Container(
padding: const EdgeInsets.all(20.0),
decoration: BoxDecoration(
color: Color.fromARGB(255, 196, 95, 95),
borderRadius: BorderRadius.circular(30),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Runner up in Innovation Olympiad',
style: TextStyle(
color: Colors.white,
fontSize: 18,
),
),
Text(
'UOL Adventure Club Representative',
style: TextStyle(
color: Colors.white,
fontSize: 18,
),
),
Text(
'Member of Robotic society',
style: TextStyle(
color: Colors.white,
fontSize: 18,
),
),
],
),
),
],
),
),
],
),
SizedBox(
height: 20,
),
Container(
decoration: BoxDecoration(
color: Color.fromARGB(255, 196, 95, 95),
borderRadius: BorderRadius.circular(5),
),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ContactItem(
icon: Icons.email,
text: 'wajeehazaidi512@gmail.com',
onPressed: () {
launch('mailto:wajeehazaidi512@gmail.com');
},
),
ContactItem(
icon: Icons.phone,
text: '+92309-5372914',
onPressed: () {
launch('tel:+923095372914');
},
),
ContactItem(
icon: Icons.link,
text: 'LinkedIn',
onPressed: () {
launch(
'linkedin.com/in/wajeeha-batool-9ab082231');
},
),
],
),
)
],
),
),
],
),
),
),
);
}

void launch(String s) {}
}

class SkillItem extends StatelessWidget {
final String skill;

const SkillItem({required this.skill});

@override
Widget build(BuildContext context) {
return Row(
children: [
Icon(Icons.check, color: Colors.white, size: 20),
SizedBox(width: 10),
Text(
skill,
style: TextStyle(
color: Colors.white,
fontSize: 16,
),
),
],
);
}
}

class ProjectCard extends StatelessWidget {
final String projectName;
final String imagePath;
final String description;

const ProjectCard({
required this.projectName,
required this.imagePath,
required this.description,
});

@override
Widget build(BuildContext context) {
return Container(
width: 400, // Increased width to accommodate image and description
padding: EdgeInsets.all(10),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
color: Colors.grey[800],
),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.asset(
imagePath,
width: 100,
height: 100,
fit: BoxFit.cover,
),
SizedBox(width: 10), // Add spacing between image and description
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
projectName,
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontWeight: FontWeight.bold,
),
textAlign: TextAlign.center,
),
SizedBox(height: 5),
Text(
description,
style: TextStyle(
color: Colors.white,
fontSize: 14,
),
textAlign: TextAlign.start,
),
],
),
),
],
),
);
}
}

class ContactItem extends StatelessWidget {
final IconData icon;
final String text;
final VoidCallback onPressed;

const ContactItem({
required this.icon,
required this.text,
required this.onPressed,
});

@override
Widget build(BuildContext context) {
return GestureDetector(
onTap: onPressed,
child: Row(
children: [
Icon(icon, color: Colors.white),
SizedBox(width: 5),
Text(
text,
style: TextStyle(color: Colors.white),
),
],
),
);
}
}


