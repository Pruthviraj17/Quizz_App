import 'package:flutter/material.dart';

class AnswerQuestion extends StatelessWidget {
  const AnswerQuestion({super.key, required this.onTap, required this.option});
  final String option;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            backgroundColor: const Color.fromARGB(255, 40, 2, 103),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(
          option,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
