import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.choosenAnswers, required this.restartQuiz});

  final void Function() restartQuiz;
  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummarydata() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      // loop body
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummarydata();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(210, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summarydata: getSummarydata()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              label: Text(
                "Restart Quiz",
                style: GoogleFonts.lato(
                  color: Colors.white70,
                ),
              ),
              icon: const Icon(
                Icons.refresh,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
