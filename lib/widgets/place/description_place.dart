import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String description;

  DescriptionPlace(this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        this.description,
        style: TextStyle(
          color: Colors.black45,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
