import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddDishesScreen extends StatefulWidget {
  @override
  _AddDishesScreenState createState() => _AddDishesScreenState();
}

class _AddDishesScreenState extends State<AddDishesScreen> {
  String dishName = '';
  String dishPrice = '';
  bool isAvailable = true; // Default to available
  String selectedDishType = 'Select Dish Type';
  String restaurantId = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADD DISH'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/delivery.jpeg', width: 250, height: 250), // Adjust size as needed
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ADD DISH', style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Dish Name'),
                onChanged: (value) {
                  setState(() {
                    dishName = value;
                  });
                },
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Dish Price'),
                onChanged: (value) {
                  setState(() {
                    dishPrice = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Availability: '),
                  Radio(
                    value: true,
                    groupValue: isAvailable,
                    onChanged: (value) {
                      setState(() {
                        isAvailable = value as bool;
                      });
                    },
                  ),
                  Text('Available'),
                  Radio(
                    value: false,
                    groupValue: isAvailable,
                    onChanged: (value) {
                      setState(() {
                        isAvailable = value as bool;
                      });
                    },
                  ),
                  Text('Not Available'),
                ],
              ),
              SizedBox(height: 16),
              DropdownButton<String>(
                value: selectedDishType,
                items: ['Select Dish Type', 'Appetizer', 'Main Course', 'Dessert']
                    .map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedDishType = value!;
                  });
                },
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Restaurant ID'),
                onChanged: (value) {
                  setState(() {
                    restaurantId = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Create a map to represent the dish data
                  Map<String, dynamic> dishData = {
                    'dishName': dishName,
                    'dishPrice': dishPrice,
                    'isAvailable': isAvailable,
                    'dishType': selectedDishType,
                    'restaurantId': restaurantId,
                  };

                  // Add the dish data to the 'Dishes' collection in Firestore
                  FirebaseFirestore.instance.collection('Dishes').add(dishData)
                      .then((value) {
                    print('Dish added successfully!');
                    // You can navigate to another screen or show a success message here
                  })
                      .catchError((error) {
                    print('Error adding dish: $error');
                    // Handle the error, show an error message, etc.
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16), // Increase button size
                ),
                child: Text('Add Dish', style: TextStyle(fontSize: 18)), // Increase font size
              ),
            ],
          ),
        ),
      ),
    );
  }
}
