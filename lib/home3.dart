import 'package:flutter/material.dart';
import 'home4.dart'; // Import your AddDishesScreen widget
// import 'home5.dart'; // Import your EditDishesScreen widget

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display a welcome message or anything you like
            Text(
              'Welcome to your Profile!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to AddDishesScreen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddDishesScreen()),
                );
              },
              child: Text('Add Dishes'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to EditDishesScreen when the button is pressed
                // Navigator.push(
                //   context,
                //   // MaterialPageRoute(builder: (context) => EditDishesScreen()),
                // );
              },
              child: Text('Edit Dishes'),
            ),
          ],
        ),
      ),
    );
  }
}
