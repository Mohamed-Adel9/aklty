import 'package:flutter/material.dart';

LinearGradient customLinearGradient(
    {required List<Color> colorList, required List<double> stops}) {
  return LinearGradient(
    colors: colorList,
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: stops,
  );
}