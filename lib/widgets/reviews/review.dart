import 'package:flutter/material.dart';
import 'avatar.dart';
import 'review_content.dart';

class ReviewWidget extends StatelessWidget {
  final String userPhotoSrc;
  final String userName;
  final String content;
  final int reviewsNumber;
  final int photosNumber;

  ReviewWidget({
    required this.userPhotoSrc,
    required this.userName,
    required this.content,
    required this.reviewsNumber,
    required this.photosNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Row(
        children: [
          UserPhotoWidget(source: this.userPhotoSrc),
          ReviewContentWidget(
            userName: this.userName,
            content: "Este es un bonito lugar",
            reviewsNumber: 3,
            photosNumber: 5,
          ),
        ],
      ),
    );
  }
}
