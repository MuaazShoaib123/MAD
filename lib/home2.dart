import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      // If signup is successful, you can navigate to the next screen or perform other actions
      print("User signed up: ${userCredential.user?.uid}");

      // You can navigate to another screen or perform other actions
      // Example:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => AnotherScreen()),
      // );
    } catch (e) {
      // Handle signup errors
      print("Error signing up: $e");
      // You can show an error message to the user if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Food Ordering Sign Up Screen'),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Container(
            width: 400,
            height: 400,
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.security,
                      size: 30,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 200),
                    Icon(
                      Icons.cancel,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(width: 50),
                SizedBox(height: 8),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Enter your email',
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Enter your password',
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      signUp(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 6),
                Text(
                  ' Sign In.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
