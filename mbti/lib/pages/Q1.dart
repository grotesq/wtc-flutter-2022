import 'package:flutter/material.dart';
import 'package:mbti/components/Body.dart';
import 'package:mbti/components/Link.dart';

Widget createPage() {
  return Body(
    children: [
      Link(label: '내향적', href: '/result-i'),
      Link(label: '외향적', href: '/result-e'),
    ],
  );
}

class Q1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text( '당신의 성향을 선택하세요' ),
        ),
        body: createPage()
      )
    );
  }
}