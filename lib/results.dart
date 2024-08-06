import 'package:flutter/material.dart';
import 'data/questions.dart';

class ResultsScreen extends StatelessWidget {
  final int correctAnswersCount;
  final Function() goHome;
  final List<String> userAnswers;

  const ResultsScreen(
      this.correctAnswersCount, this.goHome, this.userAnswers,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final int totalQuestions = 10; // Ensure this is 10
    final ScrollController scrollController = ScrollController();

    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/1*5-aoK8IBmXve5whBQM90GA.png',
            width: 300,
            height: 100,
          ),
          const SizedBox(height: 15),
          Text(
            'You got $correctAnswersCount out of $totalQuestions correct!',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 15),
          Text(
            'Your score is ${(correctAnswersCount / totalQuestions * 100).toStringAsFixed(2)}%',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8, // Adjust width to make it narrower
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.black, width: 2.0),
                    right: BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
                child: Scrollbar(
                  controller: scrollController,
                  thumbVisibility: true,
                  thickness: 8.0, // Set the thickness of the scrollbar
                  radius: const Radius.circular(10.0), // Set the radius of the scrollbar
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: ten_questions.length,
                          itemBuilder: (context, index) {
                            bool isCorrect = userAnswers[index] == ten_questions[index].correctAnswer;
                            var shuffledAnswers = getShuffledAnswers(ten_questions, index); // Shuffle the answers
                            return Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: isCorrect ? Colors.green : Colors.red,
                                    child: Text(
                                      '${index + 1}',
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  title: Text(
                                    'Q${index + 1}: ${ten_questions[index].question}',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.lightbulb, color: Colors.yellow),
                                          const SizedBox(width: 5),
                                          Expanded(
                                            child: Text(
                                              'Correct answer: ${ten_questions[index].correctAnswer}',
                                              style: const TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            isCorrect ? Icons.check : Icons.close,
                                            color: isCorrect ? Colors.green : Colors.red,
                                          ),
                                          const SizedBox(width: 5),
                                          Expanded(
                                            child: Text(
                                              'Your answer: ${userAnswers[index]}',
                                              style: const TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.white.withOpacity(0.5), // Thin bordered line
                                  thickness: 1.0,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: goHome,
                child: const Row(
                  children: [
                    Icon(Icons.refresh_rounded),
                    SizedBox(width: 10),
                    Text('Reset Quiz'),
                  ],
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}