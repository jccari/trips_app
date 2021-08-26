import 'package:flutter/material.dart';
import 'star.dart';

class StarList extends StatelessWidget {
  // const StarList({ Key? key }) : super(key: key);

  final int maxStars = 5;
  int stars = 0;

  StarList(this.stars);

  Widget generateStars() {
    List<Widget> filledStars = List.filled(this.stars, new Star(true));
    List<Widget> emptyStars =
        List.filled(this.maxStars - this.stars, new Star(false));
    return Row(
      children: filledStars + emptyStars,
    );
  }

  @override
  Widget build(BuildContext context) {
    return this.generateStars();
  }
}
