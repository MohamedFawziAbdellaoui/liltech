import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  CustomTextField({required this.text});

  bool obscuring() {
    bool a;
    if (text == "Password" || text == "Confirm Password") {
      a = true;
    } else {
      a = false;
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80),
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor: Color(0xD23183D6),
          hintText: "       " + text,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        obscureText: obscuring(),
      ),
    );
  }
}
