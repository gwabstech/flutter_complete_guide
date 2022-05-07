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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First Flutter App'),
          ),
          body: Column(
            children: const [
              Text('the Q'),
              ElevatedButton(
                onPressed: null,
                child: Text('answer 1'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('answer 1'),
              ),
            ],
          )),
    );
  }
}
