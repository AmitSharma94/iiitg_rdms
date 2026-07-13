import 'package:flutter/material.dart';

class ActivityPanel extends StatelessWidget {
  const ActivityPanel({super.key});

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
              "Recent Activities",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),


            activity(
              Icons.add_circle,
              "New Sponsored Project Added",
            ),

            activity(
              Icons.receipt_long,
              "Consultancy invoice generated",
            ),

            activity(
              Icons.person,
              "Project manpower updated",
            ),

            activity(
              Icons.rocket_launch,
              "Startup application received",
            ),

          ],
        ),
      ),
    );
  }


  Widget activity(IconData icon, String text) {

    return ListTile(

      leading: Icon(
        icon,
        color: Colors.indigo,
      ),

      title: Text(text),

    );
  }
}