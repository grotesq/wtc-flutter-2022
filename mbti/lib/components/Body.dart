import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<Widget> children;
  Body({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}