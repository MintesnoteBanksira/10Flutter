import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_first_app/data/questions.dart';
import 'package:my_first_app/paginations.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  final Function(int, List<String>) goHome;

  const QuestionsScreen(this.goHome, {super.key});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  int correctAnswersCount = 0;
  List<String> userAnswers = [];

  @override
  void initState() {
    super.initState();
    ten_questions = getTenRandomQuestions(); // Shuffle the questions
  }

  void changeQuestion(int index, String answer) {
    if (index >= 0 && index < ten_questions.length) {
      setState(() {
        if (answer == ten_questions[currentQuestionIndex].correctAnswer) {
          correctAnswersCount++;
        }
        userAnswers.add(answer);
        currentQuestionIndex = index;
      });
    } else if (index == ten_questions.length) {
      // Evaluate the last answer before showing the results
      if (answer == ten_questions[currentQuestionIndex].correctAnswer) {
        correctAnswersCount++;
      }
      userAnswers.add(answer);
      widget.goHome(correctAnswersCount, userAnswers);
      resetQuiz(); // Reset the quiz when all questions have been answered
    }
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      correctAnswersCount = 0;
      userAnswers = [];
    });
  }

  @override
Widget build(BuildContext context) {
  var currentQuestion = ten_questions[currentQuestionIndex];
  var shuffledAnswers = getShuffledAnswers(ten_questions, currentQuestionIndex); // Shuffle the answers

  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 150.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/1*5-aoK8IBmXve5whBQM90GA.png',
              width: 300,
              height: 100,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                currentQuestion.question,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: shuffledAnswers.map((answer) {
                  return ElevatedButton(
                    onPressed: () {
                      changeQuestion(currentQuestionIndex + 1, answer);
                    },
                    child: Text(answer,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 107, 5, 128),
                        ),
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 30),
            Pagination(
              currentIndex: currentQuestionIndex,
              changeQuestion: (index) => changeQuestion(index, ''),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomCenter,
              child: OutlinedButton.icon(
                onPressed: () {
                  resetQuiz(); // Reset the quiz when the 'home' button is pressed
                  widget.goHome(-1, []); // Pass -1 to indicate immediate home redirection
                },
                icon: const Icon(Icons.home, color: Colors.white),
                label: const Text('home',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}