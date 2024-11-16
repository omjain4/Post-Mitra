import 'package:flutter/material.dart';

class ThankYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Thank You'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thank You!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your delivery date has been updated.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
