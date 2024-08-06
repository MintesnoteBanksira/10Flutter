import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final Function() goQuiz;

  const StartScreen(this.goQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/1*5-aoK8IBmXve5whBQM90GA.png',
            width: 300,
            height: 100,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: goQuiz,
            child: const Text('start', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 107, 5, 128))),
          ),

        ],
      ),
    );
  }
}