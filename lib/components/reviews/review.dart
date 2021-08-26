import 'package:flutter/material.dart';
import 'avatar.dart';
import 'review_content.dart';

class ReviewWidget extends StatelessWidget {
  final String userPhotoSrc;
  final String userName;
  final String content;
  final int reviewsNumber;
  final int photosNumber;

  ReviewWidget(
    this.userPhotoSrc,
    this.userName,
    this.content,
    this.reviewsNumber,
    this.photosNumber,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Row(
        children: [
          UserPhotoWidget(this.userPhotoSrc),
          ReviewContentWidget(this.userName, "Este es un bonito lugar", 3, 5),
        ],
      ),
    );
  }
}
