import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blueGrey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ExperienceItem(
            company: 'ABC Corp',
            position: 'Flutter Developer',
            duration: 'Jan 2023 - Present',
            description: 'Developing cross-platform mobile applications for various clients.',
          ),
          ExperienceItem(
            company: 'XYZ Solutions',
            position: 'Junior Flutter Developer',
            duration: 'Jun 2021 - Dec 2022',
            description: 'Assisted in developing mobile apps and maintained codebases.',
          ),
          // Add more experiences here
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String company;
  final String position;
  final String duration;
  final String description;

  ExperienceItem({
    required this.company,
    required this.position,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: ListTile(
          title: Text('$position at $company'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(duration),
              SizedBox(height: 5),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
