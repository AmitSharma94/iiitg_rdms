import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.grey.shade200,

      child: ListView(
        children: [

          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image.asset(
                  'assets/images/iiitg_logo.png',
                  height: 70,
                ),

                const SizedBox(height: 10),

                const Text(
                  'IIITG RDMS',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ),

          const ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),

          const ListTile(
            leading: Icon(Icons.folder),
            title: Text('Sponsored Projects'),
          ),

          const ListTile(
            leading: Icon(Icons.handshake),
            title: Text('Consultancy'),
          ),

          const ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Procurement'),
          ),

          const ListTile(
            leading: Icon(Icons.groups),
            title: Text('Faculty'),
          ),

          const ListTile(
            leading: Icon(Icons.rocket_launch),
            title: Text('Startups'),
          ),

          const ListTile(
            leading: Icon(Icons.description),
            title: Text('Reports'),
          ),

          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),

        ],
      ),
    );
  }
}