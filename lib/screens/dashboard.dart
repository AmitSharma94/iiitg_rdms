import 'package:flutter/material.dart';

import '../widgets/stat_card.dart';
import '../widgets/activity_panel.dart';
import '../widgets/quick_actions.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "R&D Dashboard",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: const [
              StatCard(
                title: "Sponsored Projects",
                value: "47",
                icon: Icons.folder,
              ),
              StatCard(
                title: "Consultancy",
                value: "₹162 Lakh",
                icon: Icons.handshake,
              ),
              StatCard(
                title: "Project Staff",
                value: "35",
                icon: Icons.people,
              ),
              StatCard(
                title: "Startups",
                value: "5",
                icon: Icons.rocket_launch,
              ),
            ],
          ),

          const SizedBox(height: 30),

          const ActivityPanel(),

          const SizedBox(height: 25),

          const QuickActions(),

          const SizedBox(height: 30),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.groups,
                        color: Colors.indigo,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Research & Development Office",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Divider(),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo.shade100,
                      child: const Icon(
                        Icons.school,
                        color: Colors.indigo,
                      ),
                    ),
                    title: const Text(
                      "Dr. Sudip Biswas",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "Associate Dean (Research & Development)",
                    ),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo.shade100,
                      child: const Icon(
                        Icons.badge,
                        color: Colors.indigo,
                      ),
                    ),
                    title: const Text(
                      "Mr. Dinamoni Bora",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "Senior Superintendent",
                    ),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo.shade100,
                      child: const Icon(
                        Icons.person,
                        color: Colors.indigo,
                      ),
                    ),
                    title: const Text(
                      "Mr. Amit Kumar Sharma",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      "Junior Assistant",
                    ),
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