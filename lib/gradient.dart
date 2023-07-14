import 'package:flutter/material.dart';
// import 'package:todoapp/gradient.dart';
import 'package:todoapp/statefull.dart';

const tL = Alignment.topLeft;
const bR = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Diceroll(),
      ),
    );
  }
}
