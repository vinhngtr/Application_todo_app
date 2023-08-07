import 'package:expansetracker/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expansetracker/model/expensemodel.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.costList});

  final List<Cost> costList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: costList.length,
      itemBuilder: (func, idx) => ExpenseItem(costList[idx]),
    );
  }
}
