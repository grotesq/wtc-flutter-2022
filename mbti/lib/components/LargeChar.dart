import 'package:flutter/material.dart';

class LargeChar extends StatelessWidget {
  String char = '';

  // 생성자 함수
  LargeChar({super.key, required this.char});

  @override
  Widget build(BuildContext context) {
    return Text(char, style: TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w900,
    ),);
  }
}