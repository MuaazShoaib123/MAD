import 'package:flutter/material.dart';
import 'package:quiz2/home2.dart';

class PasswordResetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
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
                    // Center the row contents
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold, // Make it bold
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.account_circle,
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
                    decoration: InputDecoration(
                      labelText: 'muaazshoaib@yahoo.com',
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
                    decoration: InputDecoration(
                      labelText: 'Muaaz Shoaib',
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the home.dart screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccountScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold, // Make it bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 6),
                Text(
                  ' Try email.',
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
