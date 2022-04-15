import 'package:flutter/material.dart';
import 'package:w1/Screens/log _in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week1 Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogInScreen(),
    );
  }
}
