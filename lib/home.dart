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
                // .... function -->
              },
              label: const Text('Quiz start'),
              icon: const Icon(
                Icons.arrow_right_alt,
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, //màu của text
                backgroundColor: const Color.fromARGB(149, 82, 88, 197),
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                textStyle: const TextStyle(
                  // decoration: TextDecoration.underline,
                  fontSize: 20,
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
