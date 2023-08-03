import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';
import 'package:todoapp/question_screen.dart';
import 'package:todoapp/data/quiz.dart';
import 'package:todoapp/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // !------------ KHU VỰC CHUYỂN ĐỔI MÀN HÌNH -------------//
  var activeScreen = 'home';

  // ? danh sách các câu trả lời đã chọn ở màn hình quiz
  List<String> answerSelect = [];

  void chooseAnswer(String ans) {
    answerSelect.add(ans);
    if (answerSelect.length == quiz.length) {
      setState(() {
        // answerSelect = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void switches() {
    setState(() {
      activeScreen = 'question';
    });
  }

  // -------------END----------------//
  @override
  Widget build(BuildContext context) {
    // ! Điều hướng chuyển màn hình:
    Widget selectScreen = Home(switches, 'Learn Flutter challenge');
    if (activeScreen == 'question') {
      selectScreen = QuestionScreen(
        selectAnswer: chooseAnswer,
      );
    } else if (activeScreen == 'home') {
      selectScreen = Home(switches, 'Learn Flutter challenge');
    } else if (activeScreen == 'result-screen') {
      selectScreen = ResultScreen(
        listAnswer: answerSelect,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 228, 219, 139),
                Color.fromARGB(238, 102, 215, 191),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: selectScreen,
          // child: activeScreen == 'home'
          //     ? Home(switches, 'Learn Flutter challenge')
          //     : QuestionScreen(selectAnswer: chooseAnswer),
        ),
      ),
    );
  }
}
