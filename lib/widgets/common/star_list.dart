import 'package:flutter/material.dart';
import 'star.dart';

class StarList extends StatelessWidget {
  // const StarList({ Key? key }) : super(key: key);

  final int maxStars = 5;
  int stars = 0;

  StarList({required this.stars});

  Widget generateStars() {
    List<Widget> fullStars = List.filled(this.stars, StarWidget(isFull: true));
    List<Widget> emptyStars = List.filled(
        (this.maxStars - this.stars).abs(), StarWidget(isFull: false));
    return Row(children: fullStars + emptyStars);
  }

  @override
  Widget build(BuildContext context) {
    return this.generateStars();
  }
}
