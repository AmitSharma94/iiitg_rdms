import 'package:flutter/material.dart';

import 'widgets/sidebar.dart';
import 'widgets/live_datetime.dart';
import 'widgets/global_search.dart';
import 'screens/dashboard.dart';
import 'utils/responsive.dart';

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
    final bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      drawer: isMobile
          ? const Drawer(
              child: SafeArea(
                child: Sidebar(),
              ),
            )
          : null,

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 2,

        title: const Text(
          'IIITG R&D Management System',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          // Global Search
          IconButton(
            tooltip: 'Search',
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: GlobalSearch(),
              );
            },
          ),

          // Show clock only on tablet/desktop
          if (!isMobile)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: LiveDateTime(),
              ),
            ),

          // Notifications
          IconButton(
            tooltip: 'Notifications',
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),

          // User Avatar
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

          const SizedBox(width: 8),
        ],
      ),

      body: isMobile
          ? const Dashboard()
          : const Row(
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