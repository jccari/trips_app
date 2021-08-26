import 'package:flutter/material.dart';
import 'review.dart';

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ReviewWidget("assets/images/jeff.jpg", "Jeff Malone",
            "Este lugar es bonito", 3, 4),
        ReviewWidget("assets/images/ann.jpg", "Ann Malone",
            "Este lugar es bonito", 3, 4),
        ReviewWidget("assets/images/mercedes.jpg", "Mercedes Malone",
            "Este lugar es bonito", 3, 4),
      ],
    );
  }
}
