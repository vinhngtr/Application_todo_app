import 'package:flutter/material.dart';
import 'package:todoapp/answer_button.dart';
import 'package:todoapp/data/quiz.dart';
import 'package:todoapp/model/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.selectAnswer, super.key});
  // !--------- Method using add answer selected to listAnswer.
  final void Function(String answer) selectAnswer;

  @override
  State<QuestionScreen> createState() => _QuizState();
}


class _QuizState extends State<QuestionScreen> {
  var indexQuestion = 0;
  void nextIndex(String selectAns) {
    // ! Lưu trữ các lựa chọn trả lời thông qua widget function đã tạo:
    widget.selectAnswer(selectAns);
    setState(() {
      indexQuestion++;
    });
  }

  //

  @override
  Widget build(context) {
    final currQuestion = quiz[indexQuestion];
  
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currQuestion.question,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 192, 16, 16),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 2.5,
                ),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 20,
            ),

            // !------- CÁC LỰA CHỌN <==> BUTTON
            ...currQuestion.getSufferAnswer().map((ans) {
              return Column(

                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AnswerBTT(
                    textAnsw: ans,
                    nextques: () {
                      nextIndex(ans);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              );
            }),
          ],
        ),
      ),
      // width: double.infinity,
    );
  }
}
