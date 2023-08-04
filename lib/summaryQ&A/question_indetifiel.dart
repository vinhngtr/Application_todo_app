import 'package:flutter/material.dart';

class QuestionIndetifier extends StatelessWidget {
  const QuestionIndetifier({
    required this.questionIdx,
    required this.isCorrect,
    super.key,
  });
  final int questionIdx;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final numberQuestion = questionIdx + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 1, 108, 28)
            : const Color.fromARGB(255, 184, 6, 6),
        borderRadius: BorderRadius.circular(100),
        
      ),
      child: Text(
        numberQuestion.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
