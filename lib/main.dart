import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questionslist = ['what\'s your name?', 'what\'s your fovourite animal?'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("My App Bar"),
            ),
            // ignore: prefer_const_literals_to_create_immutables
            body: Center(
              child: Column(
                children: [
                  Text(questionslist[questionIndex]),
                  ElevatedButton(
                    onPressed: answerQuestion,
                    child: const Text('Answer 1'),
                  ),
                  ElevatedButton(
                    onPressed: answerQuestion,
                    child: const Text('Answer 2'),
                  ),
                  ElevatedButton(
                    onPressed: answerQuestion,
                    child: const Text('Answer 3'),
                  ),
                ],
              ),
            )));
  }
}
