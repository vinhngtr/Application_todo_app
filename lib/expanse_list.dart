import 'package:expansetracker/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expansetracker/model/expensemodel.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.costList, required this.removeCost});
  final void Function(Cost cost) removeCost;
  final List<Cost> costList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: costList.length,
      //! --------!: Method: Dismissible: cho phép trượt TRÁI PHẢI 1 ITEM XÓA KHỎI MÀN HÌNH (DỮ LIỆU GỐC THÌ KO XÓA NẾU ko đi kèm Property:  onDimissed()
      itemBuilder: (func, idx) => Dismissible(
        key: ValueKey(costList[idx]),
        background: Container(
          color: Theme.of(context).focusColor,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        onDismissed: (direction) {
          removeCost(costList[idx]);
        },
        child: ExpenseItem(
          costList[idx],
        ),
      ),
    );
  }
}
