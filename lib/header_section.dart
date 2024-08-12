import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(40),
      color: Colors.blueGrey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mohamed Soudy',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle button tap, e.g., navigate to projects section
            },
            child: Text('See My Work'),
          ),
        ],
      ),
    );
  }
}

