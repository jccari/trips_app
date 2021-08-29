import 'package:flutter/material.dart';
import 'review.dart';

const reviews = [
  {
    "userPhotoSrc": "assets/images/jeff.jpg",
    "userName": "Jeff Malone",
    "content": "Este lugar es bonito",
    "reviewsNumber": 3,
    "photosNumber": 4,
  },
  {
    "userPhotoSrc": "assets/images/ann.jpg",
    "userName": "Anne Martinez",
    "content": "Este lugar es bonito",
    "reviewsNumber": 6,
    "photosNumber": 9,
  },
  {
    "userPhotoSrc": "assets/images/mercedes.jpg",
    "userName": "Mercedes Roque",
    "content": "Este lugar es bonito",
    "reviewsNumber": 2,
    "photosNumber": 8,
  }
];

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: reviews.map((item) {
        return ReviewWidget(
          userPhotoSrc: item["userPhotoSrc"] as String,
          userName: item["userName"] as String,
          content: item["content"] as String,
          reviewsNumber: item["reviewsNumber"] as int,
          photosNumber: item["photosNumber"] as int,
        );
      }).toList(),
    );
  }
}
