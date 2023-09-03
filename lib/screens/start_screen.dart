import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/image/quiz-logo.png',
            color: Colors.pink,
            width: 200,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Welcome to Quiz App',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
          const SizedBox(
            height: 30,
          ),
          buildText(),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
          OutlinedButton.icon(
            onPressed: buildText,
            icon: const Icon(Icons.add),
            label: const Text(''),
          ),
        ],
      ),
    );
  }

  Widget buildText() => TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
          hintText: "Enter your name",
          hintStyle: TextStyle(color: Colors.blue),
          filled: true,
          fillColor: Colors.blue[50],
        ),
      );
}
