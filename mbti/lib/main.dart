import 'package:flutter/material.dart';
import 'package:mbti/pages/Detail.dart';
import 'package:mbti/pages/Home.dart';
import 'package:mbti/pages/Q1.dart';
import 'package:mbti/pages/ResultE.dart';
import 'package:mbti/pages/ResultI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => Home(),
        '/1st-question': (context) => Q1(),
        '/result-i':(context) => ResultI(),
        '/result-e':(context) => ResultE(),
        '/2nd-question':(context) => Detail(),
        '/result-n':(context) => Detail(),
        '/result-s':(context) => Detail(),
      },
    );
  }
}
