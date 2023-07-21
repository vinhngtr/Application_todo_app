import 'package:flutter/material.dart';
import 'package:todoapp/contentHome.dart';

const tL = Alignment.topLeft;
const bR = Alignment.bottomRight;

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 151, 191, 223),
      ),
      child: const Center(
        child: ContentHome('Quiz Challenge !'),
      ),
    );
  }
}
