import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class Star extends StatelessWidget {
  bool filled;

  Star(this.filled);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        this.filled ? Icons.star : Icons.star_border,
        color: Color(STAR_COLOR),
      ),
    );
  }
}
