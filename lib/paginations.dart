// paginations.dart
import 'package:flutter/material.dart';

class Pagination extends StatelessWidget {
  final int currentIndex;
  final Function(int) changeQuestion;

  const Pagination({super.key, required this.currentIndex, required this.changeQuestion});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          onPressed: currentIndex > 0 ? () => changeQuestion(currentIndex - 1) : null,
          child: const Text('Previous', style: TextStyle(color: Colors.white)),
        ),
        OutlinedButton(
          onPressed: () => changeQuestion(currentIndex + 1),
          child: const Text('Next', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}