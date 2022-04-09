import 'package:flutter/material.dart';
import 'package:w1/Screens/log _in_screen.dart';
import 'package:w1/Components/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.textMessage})
      : super(key: key);
  final String textMessage;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: TextField(

          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: textMessage,
            hintStyle: const TextStyle(
              fontFamily: "Segoe UI Semibold",
              fontSize: 15.0,
              color: Color.fromARGB(100, 70, 80, 80),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),

      ),
    );
  }
}