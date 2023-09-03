import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/widgets/questions_summary/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chooseAnswers,
    required this.onRestart,
  });

  final List<String> chooseAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    const String ch1 = 'CORRECT ANSWER : ';
    const String User = "=>> ";

    for (var i = 0; i < questions.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[questions[i].answerIndex],
        'user_answer': chooseAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQustions = questions.length;
    final numCorrectQuestion = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(60),
        child: Column(
          children: [
            Text(
              'คุณตอบถูกทั้งหมด $numCorrectQuestion ข้อ จาก $numTotalQustions ข้อ',
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'ThangngeinThin',
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            QuestionSummary(
              summaryData,
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 20, 19, 19),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            // TextButton.icon(
            //   onPressed: onRestart,
            //   icon: const Icon(Icons.refresh),
            //   label: const Text('Restart Quiz!'),
            // )
          ],
        ),
      ),
    );
  }
}
