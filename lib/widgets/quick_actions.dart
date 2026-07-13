import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Quick Actions",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 15,
              runSpacing: 15,

              children: [

                actionButton(
                  context,
                  "Add Project",
                  Icons.add_box,
                ),

                actionButton(
                  context,
                  "Add Consultancy",
                  Icons.handshake,
                ),

                actionButton(
                  context,
                  "Add Startup",
                  Icons.rocket_launch,
                ),

                actionButton(
                  context,
                  "Generate Report",
                  Icons.picture_as_pdf,
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }


  Widget actionButton(
      BuildContext context,
      String title,
      IconData icon,
      ) {

    return ElevatedButton.icon(

      onPressed: () {

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("$title clicked"),
          ),
        );

      },

      icon: Icon(icon),

      label: Text(title),

    );
  }
}