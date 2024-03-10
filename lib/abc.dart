import 'package:flutter/material.dart';

class abc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showPopup(context);
          },
          child: Text('Show Popup'),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose an option'),
          content: Container(
            width: double.maxFinite, // Full width
            child: ListView.builder(
              itemCount: 4, // Change this to the number of icons
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton.icon(
                  onPressed: () {
                    // Handle button action based on the index
                    Navigator.pop(context); // Close the popup
                  },
                  icon: Icon(_getIcon(index)),
                  label: Text(_getLabel(index)),
                );
              },
            ),
          ),
        );
      },
    );
  }

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.medical_services;
      case 1:
        return Icons.local_pharmacy;
      case 2:
        return Icons.local_hospital;
      case 3:
        return Icons.local_police;
      default:
        return Icons.error;
    }
  }

  String _getLabel(int index) {
    switch (index) {
      case 0:
        return 'Doctors';
      case 1:
        return 'Pharmacies';
      case 2:
        return 'Hospitals';
      case 3:
        return 'Police Stations';
      default:
        return 'Error';
    }
  }
}
