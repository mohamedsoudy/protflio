import 'package:flutter/material.dart';

class Project {
  final String title;
  final String description;

  Project({required this.title, required this.description});
}

final Project ecommerceProject = Project(
  title: 'E-Commerce Mobile Application',
  description: 
      'GitHub Repository: https://github.com/mohamedsoudy/E-Commerce-App.git\n\n'
      'Project Overview:\n'
      'Developed a fully functional e-commerce mobile application using Flutter, allowing users to browse products, '
      'add items to their cart, and complete purchases seamlessly.\n\n'
      'Key Features:\n'
      '• User Authentication: Integrated API-based authentication for user sign-up, login, and password recovery.\n'
      '• Product Catalog: Implemented dynamic product listings with filtering and sorting options, powered by a RESTful API.\n'
      '• Shopping Cart: Designed a persistent shopping cart that saves user selections and syncs across devices.\n'
      '• Payment Gateway: Integrated with payment gateways like Stripe or PayPal to securely process payments within the app.\n'
      '• Order Management: Developed features for users to view order history, track shipments, and manage returns.\n'
      '• State Management: Utilized Bloc/Cubit to efficiently manage app state, ensuring smooth user interactions and navigation.\n'
      '• Custom UI/UX: Designed a modern, user-friendly interface with custom animations, responsive layouts, and adherence to Material Design principles.\n'
      '• Notifications: Implemented push notifications to alert users of order status updates, new products, and promotional offers.',
);


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

