import 'package:flutter/material.dart';
import 'package:todoapp/summaryQ&A/summary_item.dart';

class SummaryAnswer extends StatelessWidget {
  const SummaryAnswer(this.summaryQuestion, {super.key});
  final List<Map<String, Object>> summaryQuestion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryQuestion.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
