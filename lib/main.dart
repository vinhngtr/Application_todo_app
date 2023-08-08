import 'package:flutter/material.dart';
import 'package:expansetracker/expanse.dart';

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(197, 88, 85, 85),
);
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: const Color.fromARGB(255, 117, 159, 179),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        cardTheme: const CardTheme().copyWith(
          color: const Color.fromARGB(166, 159, 239, 205),
          margin: const EdgeInsets.fromLTRB(10, 14, 10, 14),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(111, 28, 130, 193),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const Expense(),
    ),
  );
}
