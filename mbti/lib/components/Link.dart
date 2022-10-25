import 'package:flutter/material.dart';

class Link extends StatelessWidget {
  String label;
  String href;
  Link({super.key, required this.label, required this.href });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, href);
      },
      child: Text( label )
    );
  }
}