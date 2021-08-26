import 'package:flutter/material.dart';

class TitlePlace extends StatelessWidget {
  final String text;

  TitlePlace(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 320.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        this.text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
