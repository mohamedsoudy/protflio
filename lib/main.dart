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
        title: Center(child: Text('My Portfolio')),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderSection(),
            AboutSection(),
            SkillsSection(),
            ProjectItem(title: 'E-Commerce Mobile Application', description: 'GitHub Repository: https://github.com/mohamedsoudy/E-Commerce-App.git\n\n'
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
      '• Notifications: Implemented push notifications to alert users of order status updates, new products, and promotional offers.',),
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
            'Mohamed Soudy',
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
            'I am an experienced Flutter developer with a strong background in building high-performance, '
            'responsive, and user-friendly applications. Adept at leveraging state management solutions like Bloc/Cubit, '
            'I am skilled in integrating RESTful APIs and Firebase to deliver seamless user experiences. '
            'Passionate about creating intuitive and visually appealing UIs, I have a keen eye for detail and a commitment to clean, '
            'maintainable code. Eager to contribute my expertise to innovative projects and help drive success in a dynamic development environment.',
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
            'Languages: Dart',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Mobile Development: Flutter',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'State Management: Bloc, Cubit',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Backend Integration: RESTful APIs, Firebase, Cloud Firestore',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Tools & IDEs: VS Code, Android Studio',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'UI/UX: Material Design, Cupertino Design, Responsive Layouts',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Other: Firebase Authentication, Push Notifications',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}



// class Project {
//   final String title;
//   final String description;

//   Project({required this.title, required this.description});
// }

// final Project ecommerceProject = Project(
//   title: 'E-Commerce Mobile Application',
//   description: 
//       'GitHub Repository: https://github.com/mohamedsoudy/E-Commerce-App.git\n\n'
//       'Project Overview:\n'
//       'Developed a fully functional e-commerce mobile application using Flutter, allowing users to browse products, '
//       'add items to their cart, and complete purchases seamlessly.\n\n'
//       'Key Features:\n'
//       '• User Authentication: Integrated API-based authentication for user sign-up, login, and password recovery.\n'
//       '• Product Catalog: Implemented dynamic product listings with filtering and sorting options, powered by a RESTful API.\n'
//       '• Shopping Cart: Designed a persistent shopping cart that saves user selections and syncs across devices.\n'
//       '• Payment Gateway: Integrated with payment gateways like Stripe or PayPal to securely process payments within the app.\n'
//       '• Order Management: Developed features for users to view order history, track shipments, and manage returns.\n'
//       '• State Management: Utilized Bloc/Cubit to efficiently manage app state, ensuring smooth user interactions and navigation.\n'
//       '• Custom UI/UX: Designed a modern, user-friendly interface with custom animations, responsive layouts, and adherence to Material Design principles.\n'
//       '• Notifications: Implemented push notifications to alert users of order status updates, new products, and promotional offers.',
// );


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
            'Email: mohamedvoda500@gmail.com',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'LinkedIn: https://www.linkedin.com/in/mohamed-soudy/',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'GitHub: https://github.com/mohamedsoudy',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

