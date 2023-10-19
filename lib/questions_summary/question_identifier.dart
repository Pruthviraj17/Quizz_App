import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isCorrectAnswer
                ? const [
                    Color.fromARGB(255, 9, 149, 13),
                    Color.fromARGB(255, 84, 163, 88)
                  ]
                : const [
                    Color.fromARGB(255, 171, 22, 12),
                    Color.fromARGB(255, 183, 75, 67)
                  ]),
        // color: isCorrectAnswer ? Gradient : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          questionNumber.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 7, 2, 40),
          ),
        ),
      ),
    );
  }
}
