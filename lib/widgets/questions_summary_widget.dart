import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/theme/colors.dart';
import 'package:quiz_app_flutter/theme/text_style.dart';

class QuestionsSummaryWidget extends StatelessWidget {
  const QuestionsSummaryWidget(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: 16,
                    // height: 16,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: data['correct_answer'] == data['user_answer']
                            ? ColorThemeData.colorBlue
                            : ColorThemeData.colorWhitePurple),
                    // alignment: Alignment.topCenter,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(fontWeight: FontWeight.w700),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data['question'] as String),
                          style: TextGoogleFontThemeData.googleFont16,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text((data['correct_answer'] as String),
                            style: TextGoogleFontThemeData.googleFont12Purple),
                        Text((data['user_answer'] as String),
                            style: TextGoogleFontThemeData.googleFont12Blue),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
