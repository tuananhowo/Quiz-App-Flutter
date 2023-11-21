import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/data/questions.dart';
import 'package:quiz_app_flutter/theme/colors.dart';
import 'package:quiz_app_flutter/theme/text_style.dart';

import '../widgets/questions_summary_widget.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.replayQuiz, required this.chosenAnswers, super.key});

  final void Function() replayQuiz;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();

    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Align(
      alignment: Alignment.center,
      // width: double.infinity,
      // height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: TextGoogleFontThemeData.googleFont24,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummaryWidget(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: replayQuiz,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.replay_rounded,
                    color: ColorThemeData.colorWhite,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Restart Quiz!',
                      style: TextGoogleFontThemeData.googleFont16),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
