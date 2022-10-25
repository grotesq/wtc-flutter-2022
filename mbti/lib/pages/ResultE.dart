import 'package:flutter/material.dart';
import 'package:mbti/components/Body.dart';
import 'package:mbti/components/LargeChar.dart';

class ResultE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결과 : E'),
      ),
      body : Body(
        children: [
          LargeChar(char: 'E'),
          Text('당신은 외향적 성향을 가진 E 입니다.'),
          ElevatedButton(
              onPressed: () {

              },
              child: Text( '다음으로' ),
            )
        ],
      )
    );
  }
}