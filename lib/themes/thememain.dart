import 'package:flutter/material.dart';

class TemaBonito {
  static ThemeData temaBonito = ThemeData(
    primaryColor: const Color.fromARGB(255, 15, 218, 116),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color.fromARGB(255, 0, 58, 29),
      secondary: const Color.fromARGB(255, 4, 39, 20),
      background: const Color.fromARGB(255, 231, 147, 121),

    ),
    fontFamily: 'Roboto',
  );
}