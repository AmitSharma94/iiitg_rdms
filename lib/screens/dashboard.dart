import 'package:flutter/material.dart';
import '../widgets/stat_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
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

        ],
      ),
    );
  }
}