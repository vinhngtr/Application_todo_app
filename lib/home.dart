import 'package:flutter/material.dart';
// import 'package:todoapp/contentHome.dart';
// import 'package:todoapp/quiz.dart';

const tL = Alignment.topLeft;
const bR = Alignment.bottomRight;

class Home extends StatelessWidget {
  const Home(this.questionQuiz, this.textInput, {super.key});
  final String textInput;
  final void Function() questionQuiz;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // decoration: const BoxDecoration(
      //   color: Color.fromARGB(255, 151, 191, 223),
      // ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.8,
              child: Image.asset(
                'assets/images/quiz2.png',
                width: 200,
                // color: Colors.amberAccent,
              ),
            ),
            Text(
              textInput,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(210, 7, 186, 4),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: () {
                questionQuiz();
              },
              label: const Text('Quiz start'),
              icon: const Icon(
                Icons.arrow_right_alt,
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, //màu của text
                backgroundColor: const Color.fromARGB(149, 82, 88, 197),
                side: const BorderSide(
                    color: Color.fromARGB(255, 147, 218, 230), width: 2),
                padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto Mono',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
