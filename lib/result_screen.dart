import 'package:flutter/material.dart';
import 'package:todoapp/data/quiz.dart';
import 'package:todoapp/summaryQ&A/summary_answer.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    required this.onReset,
    required this.listAnswer,
    super.key,
  });
  final List<String> listAnswer;
  final void Function() onReset;

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
                // fontFamily: ,
                color: Colors.white,
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
            TextButton.icon(
              onPressed: onReset,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
