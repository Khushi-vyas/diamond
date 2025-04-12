// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diamond App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(), // or use named route if you prefer
    );
  }
}
