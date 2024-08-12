import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blueGrey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Email: your.email@example.com',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'LinkedIn: linkedin.com/in/your-profile',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'GitHub: github.com/your-profile',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          // Add more contact details as needed
        ],
      ),
    );
  }
}

