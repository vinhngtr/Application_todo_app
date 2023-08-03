import 'package:flutter/material.dart';

class AnswerBTT extends StatelessWidget {
  // ! đối số bắt buộc của constructor với required:-->
  const AnswerBTT({super.key, required this.textAnsw, required this.nextques});
  final String textAnsw;
  final void Function() nextques;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: nextques,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      
      ),
      child: Text(
        // Icon.Icons()
        textAnsw,
        textAlign: TextAlign.center,
      ),
    );
  }
}
