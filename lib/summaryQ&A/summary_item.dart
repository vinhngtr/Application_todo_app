import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/summaryQ&A/question_indetifiel.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.item, {super.key});

  final Map<String, Object> item;
  @override
  Widget build(BuildContext context) {
    final isCorrect = item['correct_answer'] == item['user_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndetifier(
              questionIdx: item['question_index'] as int, isCorrect: isCorrect),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  item['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 128, 37, 113),
                    // fontSize:
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  item['user_answer'] as String,
                  style: const TextStyle(
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
