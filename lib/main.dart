import 'package:flutter/material.dart';
import 'package:todoapp/gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.black38, Colors.black45),
      ),
    ),
  );
}
