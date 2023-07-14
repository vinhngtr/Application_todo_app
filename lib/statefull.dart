import 'package:flutter/material.dart';
import 'dart:math';

class Diceroll extends StatefulWidget {
  const Diceroll({super.key});
  @override
  State<Diceroll> createState() => _DicerollState();
}

class _DicerollState extends State<Diceroll> {
  var activebtn = 'assets/images/dice-2.png';
  int count = 0;
  int countN = 0;
  void pressed() {
    setState(() {
      count = Random().nextInt(6) + 1;
      if (count != countN) {
        activebtn = 'assets/images/dice-$count.png';
        countN = count;
      } else {
        count = Random().nextInt(6) + 1;
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activebtn,
          width: 200,
        ),
        const SizedBox(
          width: 10,
          height: 10,
        ),
        TextButton(
          onPressed: pressed,
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
            padding: const EdgeInsets.all(20.0),
          ),
          child: const Text('Spin'),
        ),
      ],
    );
  }
}
