import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class StarWidget extends StatelessWidget {
  final bool isFull;

  StarWidget({required this.isFull});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        this.isFull ? Icons.star : Icons.star_border,
        color: Color(STAR_COLOR),
      ),
    );
  }
}
