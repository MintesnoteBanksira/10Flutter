import 'package:flutter/material.dart';
import 'package:my_first_app/questions_screen.dart';
import 'package:my_first_app/start_screen.dart';
import 'package:my_first_app/results.dart'; // import the ResultsScreen widget
import 'package:my_first_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  int correctAnswersCount = 0; // to store the count of correct answers
  List<String> userAnswers = []; // to store user answers

  void switchScreen([int correctAnswers = 0, List<String> answers = const []]) {
    setState(() {
      if (activeScreen == 'start-screen') {
        activeScreen = 'questions-screen';
      } else if (activeScreen == 'questions-screen') {
        activeScreen = 'results-screen';
        correctAnswersCount = correctAnswers; // store the count of correct answers
        userAnswers = answers; // store user answers
      } else {
        activeScreen = 'start-screen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(switchScreen);
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(correctAnswersCount, switchScreen, userAnswers); // pass the count of correct answers and user answers
    } else if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 56, 2, 50), Color.fromARGB(255, 125, 61, 133)]
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}