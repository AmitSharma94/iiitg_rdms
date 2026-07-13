import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(25),
      color: Colors.grey.shade100,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),


          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: const [

                  Text(
                    'Welcome to IIIT Guwahati R&D Management System',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Manage Sponsored Projects, Consultancy, Procurement, Startups and Reports.',
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}