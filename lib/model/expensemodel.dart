import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
// import 'package:flutter/material.dart';

const uuid = Uuid();

enum Category { food, travel, work, business }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.travel_explore,
  Category.work: Icons.work,
  Category.business: Icons.business,
};

class Cost {
  Cost({
    required this.amount,
    required this.time,
    required this.title,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime time;
  final Category category;
}
