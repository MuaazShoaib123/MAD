import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home2.dart';
import 'home3.dart';// Import your SignupScreen widget

class PasswordResetScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signIn(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      // If sign in is successful, you can navigate to the next screen or perform other actions
      print("User signed in: ${userCredential.user?.uid}");

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        ),
      );
    } catch (e) {
      // Handle sign-in errors
      print("Error signing in: $e");
      // You can show an error message to the user if needed
    }
  }

  void navigateToSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AccountScreen()),
    );
  }

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
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
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
                      signIn(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    navigateToSignUp(context);
                  },
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 6),
                GestureDetector(
                  onTap: () {
                    navigateToSignUp(context);
                  },
                  child: Text(
                    ' Sign Up.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
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
