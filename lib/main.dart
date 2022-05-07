// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var question = [
      'what/s my name',
      'how old am i',
    ];

    void answerQuestions() {
      if (kDebugMode) {
        print('Answer chosen');
      }
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First Flutter App'),
          ),
          body: Column(
            children: [
              Text('the Q'),
              ElevatedButton(
                onPressed: answerQuestions,
                child: Text('answer 1'),
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: Text('answer 1'),
              ),
            ],
          )),
    );
  }
}
