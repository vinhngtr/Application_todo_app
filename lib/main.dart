import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';
// import 'package:todoapp/myhomeePage.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 214, 208, 149),
                Color.fromARGB(210, 206, 8, 8)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Home(),
        ),
      ),
    ),
  );
}
