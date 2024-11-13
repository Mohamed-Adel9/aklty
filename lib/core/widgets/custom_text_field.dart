import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller, required this.text,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final String text;
  final bool obscureText ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration:  InputDecoration(
        hintText: text,
        border: const UnderlineInputBorder(),
      ),
      obscureText: obscureText,
    );
  }
}