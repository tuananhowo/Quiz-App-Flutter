import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/theme/colors.dart';

class AnswerButtonWidget extends StatelessWidget {
  const AnswerButtonWidget(
      {required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: ColorThemeData.colorPurpleDark,
          foregroundColor: ColorThemeData.colorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
