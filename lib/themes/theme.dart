import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  fontFamily: 'Sen',
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontSize: 17,
      color: Colors.white60,
    ),
    headlineMedium: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ).apply(
      // bodyColor: Colors.white,
      // displayColor: Colors.white,
      ),
);
