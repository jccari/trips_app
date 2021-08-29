import 'package:flutter/material.dart';

class TitlePlaceWidget extends StatelessWidget {
  final String label;

  TitlePlaceWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 350.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        this.label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
