// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var question_index = 0;
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  int answerQuestions(int index) {
    if (kDebugMode) {
      print('the index is $index');
    }
    return index;
  }

  void answerQuestion() {
    question_index = question_index + 1;
    answerQuestions(question_index);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what/s my name',
      'how old am i',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First Flutter App'),
          ),
          body: Column(
            children: [
              Text(question[question_index]),
              ElevatedButton(
                onPressed: () => answerQuestion,
                child: Text('answer 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  answerQuestion;
                },
                child: Text('answer 1'),
              ),
            ],
          )),
    );
  }
}
