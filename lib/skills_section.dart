import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blueGrey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
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
          // Add more skills as needed
        ],
      ),
    );
  }
}
