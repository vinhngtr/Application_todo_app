import 'package:flutter/material.dart';

class SummaryAnswer extends StatelessWidget {
  const SummaryAnswer(this.summaryQuestion, {super.key});
  final List<Map<String, Object>> summaryQuestion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryQuestion.map(
            (data) {
              
              return Row(
                children: [
                  // ! STT của câu hỏi:
                  
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: 
                    ),
                  ),
                  // Text(((data['question_index'] as int) + 1).toString()),

                  Expanded(
                    child: Column(
                      // ! Thông tin về câu hỏi và câu trả lời của người dùng:
                      children: [
                        Text(
                          data['question'].toString(),
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'].toString(),
                          style: const TextStyle(color: Colors.red),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct_answer'].toString(),
                          style: const TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
