import 'package:flutter/material.dart';


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
        primarySwatch: Colors.blue,
      ),
      home: PortfolioHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderSection(),
            AboutSection(),
            SkillsSection(),
            ProjectsSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.blueAccent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Your Name',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'About Me',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'I am a Flutter developer with experience in building high-quality mobile applications. '
            'I have a passion for creating efficient and scalable code, and I enjoy working on challenging projects.',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Skills',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '- Flutter & Dart',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '- Firebase & REST APIs',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '- State Management (Cubit, Bloc)',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '- UI/UX Design',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            '- Git & Version Control',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Projects',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ProjectItem(
            title: 'Project 1',
            description: 'Description of project 1.',
          ),
          ProjectItem(
            title: 'Project 2',
            description: 'Description of project 2.',
          ),
          ProjectItem(
            title: 'Project 3',
            description: 'Description of project 3.',
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;

  ProjectItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Contact',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Email: your.email@example.com',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'LinkedIn: linkedin.com/in/your-profile',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'GitHub: github.com/your-profile',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

