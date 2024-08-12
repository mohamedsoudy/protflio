import 'package:flutter/material.dart';
import 'package:protfolio/about_section.dart';
import 'package:protfolio/contact_section.dart';
import 'package:protfolio/experience_section.dart';
import 'package:protfolio/header_section.dart';
import 'package:protfolio/projects_section.dart';

import 'package:flutter/material.dart';
import 'package:protfolio/skills_section.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Developer Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter Portfolio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            SkillsSection(),
            ProjectsSection(),
            ExperienceSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}

