import 'package:flutter/material.dart';
import 'package:my_first_app/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
           Quiz(),

    );
  }
}