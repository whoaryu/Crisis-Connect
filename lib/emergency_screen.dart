import 'package:flutter/material.dart';
//import 'google_maps_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('emerGen-Z'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                launch(
                    'https://www.google.com/maps/search/?api=1&query=doctors+near+me');
              },
              child: Text('Find Near Me - Doctors'),
            ),
          ),
          // Add more buttons for pharmacies and hospitals similarly

          // Grid of emergency buttons
          // You can use a GridView.builder for a dynamic grid
        ],
      ),
    );
  }
}
