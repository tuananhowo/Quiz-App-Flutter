import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/data/questions.dart';
import 'package:quiz_app_flutter/views/questions_screen.dart';
import 'package:quiz_app_flutter/views/results_screen.dart';

import 'theme/colors.dart';
import 'views/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // use in start screen
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
      // activeScreen = QuestionsScreen();
    });
  }

  void replayQuiz() {
    setState(() {
      activeScreen = 'questions-screen';
      selectedAnswers = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget =
          ResultScreen(chosenAnswers: selectedAnswers, replayQuiz: replayQuiz);
    }
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            padding: const EdgeInsets.only(left: 40, right: 40),
            decoration: const BoxDecoration(
              color: ColorThemeData.colorPurple,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  ColorThemeData.colorPurple,
                  ColorThemeData.colorPurpleWhite
                ],
              ),
            ),
            // child: activeScreen,
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
