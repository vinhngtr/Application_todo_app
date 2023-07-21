import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class ContentHome extends StatelessWidget {
  const ContentHome(this.textInput, {super.key});
  final String textInput;
  void nextPage() {
    // ...
  }
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz2.png',
          width: 200,
          // color: Colors.amberAccent,
        ),
        Text(
          textInput,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(210, 7, 186, 4),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          onPressed: () {
            // .... function -->
            
          },
          label: const Text('Quiz start'),
          icon: const Icon(Icons.arrow_right_alt),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white, //màu của text
            backgroundColor: const Color.fromARGB(149, 82, 88, 197),
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            textStyle: const TextStyle(
              // decoration: TextDecoration.underline,
              fontSize: 25,
              fontWeight: FontWeight.w300,
              fontFamily: 'Roboto Mono',
            ),
          ),
        )
      ],
    );
  }
}
