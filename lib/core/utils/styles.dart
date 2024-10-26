import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle styleBold50(context) {
    return const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 50.0,
      fontFamily: "ReadexPro",
      color: Colors.black,
    );
  } static TextStyle styleBold25(context) {
    return const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 25.0,
      fontFamily: "ReadexPro",
      color: Colors.black,
    );
  }

  static TextStyle styleSemiBold25(context) {
    return const TextStyle(
      fontSize: 25,
      fontFamily: 'ReadexPro',
      letterSpacing: -0.3,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular16(context) {
    return const TextStyle(
      fontSize: 16,
      fontFamily: 'ReadexPro',
      letterSpacing: -0.3,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular20(context) {
    return const TextStyle(
        fontSize: 20,
        fontFamily: 'ReadexPro',
        fontWeight: FontWeight.w400,
        color: Colors.white);
  }
}
