import 'package:aklty/core/utils/colors.dart';
import 'package:flutter/material.dart';

Widget buildTabButton(String text, bool isActive,Function ()? onPressed) {
  return TextButton(
    onPressed: onPressed,
    style: TextButton.styleFrom(
      foregroundColor: isActive ? Colors.white : AppColors().primaryColor,
      backgroundColor: isActive ? AppColors().primaryColor: Colors.transparent,
      // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold , fontSize: 18),
    ),
  );
}

Widget buildSocialIcon(String image) {
  return CircleAvatar(
    backgroundColor: Colors.white,
    radius: 20,
    child: Image.asset(image),
  );
}
