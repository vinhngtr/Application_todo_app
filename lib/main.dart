// import 'package:expansetracker/expanse_list.dart';
import 'package:flutter/material.dart';
import 'package:expansetracker/expanse.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromARGB(166, 184, 196, 212),
          cardTheme: const CardTheme().copyWith(
            color: const Color.fromARGB(255, 239, 235, 222),
            margin: const EdgeInsets.fromLTRB(10, 12, 10, 12),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(111, 28, 130, 193),
          ))),
      debugShowCheckedModeBanner: false,
      home: const Expense(),
    ),
  );
}
