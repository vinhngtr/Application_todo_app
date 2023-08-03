import 'package:flutter/material.dart';
import 'package:todoapp/data/quiz.dart';
import 'package:todoapp/summary_answer.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.listAnswer, super.key});
  final List<String> listAnswer;
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < listAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': quiz[i].question,
          'correct_answer': quiz[i].answer[0],
          'user_answer': listAnswer[i],
        },
      );
    }
    return summary;
  }

  int correctNumber() {
    int num = 0;
    getSummary().map((data) {
      if (data['correct_answer'] == data['user_answer']) {
        num += 1;
      }
    });
    return num;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final numberQuestion = quiz.length;
    final numberCorrect = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'You answered $numberCorrect out of $numberQuestion questions correctly !',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            SummaryAnswer(summaryData),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.all(Colors.red),
                // maximumSize: const MaterialStatePropertyAll(Size(200, 40)),
                fixedSize: const MaterialStatePropertyAll(
                    Size(double.minPositive, 30)),
              ),
              child: const Text('Restart quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
