import 'package:flutter/material.dart';
import 'available_time_slot_screen.dart';
import 'update_delivery_date_screen.dart'; // Import the Available Time Slot file

class UpcomingDeliveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Upcoming Delivery'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to "Available Time Slot" screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AvailableTimeSlotScreen(),
                    ), // Navigate to the Available Time Slot screen
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  minimumSize: Size(double.infinity, 50),
                  shadowColor: Colors.grey.shade500,
                  elevation: 5,
                ),
                child: Text(
                  'Update delivery time slot',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to "Update Delivery Date" screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpdateDeliveryDateScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  minimumSize: Size(double.infinity, 50),
                  shadowColor: Colors.grey.shade500,
                  elevation: 5,
                ),
                child: Text(
                  'Update delivery date',
                  style: TextStyle(color: Colors.black),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
