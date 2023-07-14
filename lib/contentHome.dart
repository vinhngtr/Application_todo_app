import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        ),
        Text(
          textInput,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(211, 173, 16, 16),
          ),
        ),
        const SizedBox(
          width: 50,
          height: 50,
        ),
        TextButton(
          onPressed: nextPage,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              fontFamily: 'Roboto Mono',
            ),
          ),
          child: const Text('Start quiz'),
        ),
      ],
    );
  }
}
