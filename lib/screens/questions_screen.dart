import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/widgets/answer_button.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  double _inttial = 0.0;

  void answerQustion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      // currentQuestionIndex = currentQuestionIndex + 1;
      // currentQuestionIndex += 1;
      currentQuestionIndex++;
    });
  }

  void updateProgress() {
    Timer.periodic(Duration(microseconds: 10), (timer) {
      setState(() {
        _inttial = _inttial + 0.01;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // final currentQuestion = questions[currentQuestionIndex];
    final currentQuestion = questions[currentQuestionIndex];
    String value = (_inttial * 5).toString()[0];
    //updateProgress();
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ...currentQuestion.answers.map((answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQustion(answer);
                    setState(() {
                      _inttial = _inttial + 0.2;
                    });
                  },
                );
              }),
              SizedBox(
                height: 100,
              ),
              Text("Steps $value of 5 Completed"),
              SizedBox(
                height: 50,
              ),
              LinearProgressIndicator(
                // width: 250.0,
                // lineHeight: 25,
                // linearStrokeCap: LinearStrokeCap.roundAll,
                // // percent: 30 / 100,
                value: _inttial,
                minHeight: 25.0,
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation(Colors.green),
              ),
            ],
          ),
        ));
  }
}
