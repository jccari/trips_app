import 'package:flutter/material.dart';

class ReviewContentWidget extends StatelessWidget {
  // const ReviewContentWidget({Key? key}) : super(key: key);

  final String userName;
  final String content;
  final int reviewsNumber;
  final int photosNumber;

  ReviewContentWidget({
    required this.userName,
    required this.content,
    required this.reviewsNumber,
    required this.photosNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      // height: 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.userName,
            textAlign: TextAlign.left,
            style: TextStyle(
              // fontWeight: FontWeight.w300,
              fontSize: 18.0,
            ),
          ),
          Text(
            '${this.reviewsNumber} Reviews · ${this.photosNumber} Photos',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xFFa3a5a7),
            ),
          ),
          Text(
            this.content,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 17.0,
            ),
          )
        ],
      ),
    );
  }
}
