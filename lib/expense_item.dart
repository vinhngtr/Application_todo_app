import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expansetracker/model/expensemodel.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.costItem, {super.key});

// ! chuyển đổi dateTime sang dd / mm / yyyy:
  String convertDateTimeDisplay(String date) {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('dd-MM-yyyy');
    final DateTime displayDate = displayFormater.parse(date);
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }

  final Cost costItem;

  @override
  Widget build(BuildContext context) {
    // ! mỗi item là 1 thẻ  với widget CARD
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              costItem.title,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                // ! Chi phí của Event:
                Text(
                  ' \$${costItem.amount.toStringAsFixed(2)}',
                ),
                const Spacer(),
                // ! Icon category and Time setItem:
                Row(
                  children: [
                    Icon(categoryIcons[costItem.category]),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      convertDateTimeDisplay(
                          DateUtils.dateOnly(costItem.time).toString()),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
