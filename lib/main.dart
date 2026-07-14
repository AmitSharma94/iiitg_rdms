import 'package:flutter/material.dart';
import 'widgets/live_datetime.dart';
import 'widgets/sidebar.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(const IIITGRDMS());
}

class IIITGRDMS extends StatelessWidget {
  const IIITGRDMS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IIITG R&D Management System',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,

        title: const Text(
          'IIITG R&D Management System',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: LiveDateTime(),
            ),
          ),

          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {},
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      ),

      body: const Row(
        children: [
          Sidebar(),
          Expanded(
            child: Dashboard(),
          ),
        ],
      ),
    );
  }
}