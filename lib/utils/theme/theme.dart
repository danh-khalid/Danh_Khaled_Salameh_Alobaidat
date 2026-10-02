import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,

  colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1976D2)),

  scaffoldBackgroundColor: const Color(0xFFF8FAFD),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1976D2),
    foregroundColor: Colors.white,
    centerTitle: false,
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFFD8DFEA)),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFFD8DFEA)),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFF1976D2), width: 1.5),
    ),
  ),
);
