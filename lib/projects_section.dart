import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ProjectItem(
            title: 'E-commerce App',
            description: 'A complete e-commerce solution built with Flutter and Firebase.',
          ),
          ProjectItem(
            title: 'Social Media App',
            description: 'A social networking app with real-time chat and media sharing.',
          ),
          ProjectItem(
            title: 'Portfolio Website',
            description: 'This website, showcasing my work as a Flutter developer.',
          ),
          // Add more projects here
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text(description),
        ),
      ),
    );
  }
}

