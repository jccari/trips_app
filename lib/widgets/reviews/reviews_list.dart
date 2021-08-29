import 'package:flutter/material.dart';
import 'review.dart';

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ReviewWidget(
          userPhotoSrc: "assets/images/jeff.jpg",
          userName: "Jeff Malone",
          content: "Este lugar es bonito",
          reviewsNumber: 3,
          photosNumber: 4,
        ),
        ReviewWidget(
          userPhotoSrc: "assets/images/ann.jpg",
          userName: "Anne Martinez",
          content: "Este lugar es bonito",
          reviewsNumber: 6,
          photosNumber: 9,
        ),
        ReviewWidget(
          userPhotoSrc: "assets/images/mercedes.jpg",
          userName: "Mercedes Roque",
          content: "Este lugar es bonito",
          reviewsNumber: 2,
          photosNumber: 8,
        ),
      ],
    );
  }
}
