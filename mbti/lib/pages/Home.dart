import 'package:flutter/material.dart';
import 'package:mbti/components/Body.dart';
import 'package:mbti/components/Link.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text( 'MBTI 테스트' ),
        ),
        body: Body(children: [
          Link(label: '시작하기', href: '/1st-question' ),
        ],)
      )
    );
  }
}