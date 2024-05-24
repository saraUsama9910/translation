import 'package:nonamed/screens/home_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(NonamedApp());
}
class NonamedApp extends StatelessWidget {
  const NonamedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

