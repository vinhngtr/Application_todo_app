import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  void pressed() {}
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
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/images/dice-1.png',
            width: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: pressed,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 188, 240, 20),
              backgroundColor: const Color.fromARGB(255, 4, 167, 236),
              textStyle: const TextStyle(
                fontSize: 28,
              ),
              padding: const EdgeInsets.all(12.0),
            ),
            child: const Text('Spin'),
          ),
        ]),
      ),
    );
  }
}
