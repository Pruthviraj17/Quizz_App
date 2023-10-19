import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer = data['user_answer'] == data['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: data['question_index'] as int),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data['user_answer'] as String,
                style: GoogleFonts.lato(
                  color: Colors.grey,
                ),
              ),
              Text(
                data['correct_answer'] as String,
                style: GoogleFonts.lato(
                  color: Colors.blue.shade600,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
