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
        color: Colors.blue,
      ),
      child: const Center(
        child: ContentHome('Quiz App !!!'),
      ),
    );
  }
}
