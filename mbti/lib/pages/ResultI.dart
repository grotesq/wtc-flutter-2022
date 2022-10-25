import 'package:flutter/material.dart';
import 'package:mbti/components/LargeChar.dart';

class ResultI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        appBar: AppBar(
          title: Text('결과 : I'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LargeChar(char: 'I'),
              Padding(
                padding: EdgeInsets.only( top: 12, bottom: 12 ),
                child: Text('당신은 내향적 성향을 가진 I 입니다.'),
              ),
              ElevatedButton(
                onPressed: () {

                },
                child: Text( '다음으로' ),
              )
            ],
          ),
        ),
      )
    );
  }
}