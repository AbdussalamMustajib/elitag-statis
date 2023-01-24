// import 'package:elitag/detail/navigation_page.dart';
// import 'package:elitag/scr/home_page.dart';
import 'package:elitag/scr/login_page.dart';
// import 'package:elitag/scr/nilai_page.dart';
// import 'package:elitag/scr/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
