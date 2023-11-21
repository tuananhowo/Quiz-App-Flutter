import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/import_assets/assets.dart';
import 'package:quiz_app_flutter/theme/colors.dart';
import 'package:quiz_app_flutter/theme/text_style.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          ImageManagementPng.quizLogo,
          color: ColorThemeData.colorWhiteOpacity05,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Learn Flutter the fun way',
          style: TextGoogleFontThemeData.googleFont24,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            // backgroundColor: Colors.transparent, elevation: 0,
            foregroundColor: ColorThemeData.colorWhite,
          ),
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz',
            style: TextStyleThemeData.fontSize16ColorWhite,
          ),
        ),
      ],
    );
  }
}
