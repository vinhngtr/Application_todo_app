import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage(this.titles, {super.key});
  final String titles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: Text(titles),
      ),
      // body: SingleChildScrollView(

      // ),
      body: Container(
        color: const Color.fromARGB(255, 222, 159, 159),
      ),
    );
  }
}
