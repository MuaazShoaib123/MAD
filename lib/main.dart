import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quiz2/home3.dart';

import 'home.dart';
import 'home4.dart';// Import your HomeScreen widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey:
      "AIzaSyD5SknR0PPq8T2TVkAHaYU6yUy0xCKYjs8",
          appId: "1:792973733347:web:b2bf329807a77f9cad84d6",
          messagingSenderId:
          "792973733347",
          projectId: "test-99b18",
          storageBucket: "test-99b18.appspot.com"
      ),
    );

  }
  else{
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PasswordResetScreen(), // Use your PasswordResetScreen widget as the initial screen
    );
  }
}
