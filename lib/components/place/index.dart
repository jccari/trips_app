import 'package:flutter/material.dart';
import '../common/star.dart';
import 'title_place.dart';
import 'description_place.dart';

class Place extends StatelessWidget {
  final String name;
  final int stars;
  final String description;

  final int maxStars = 5;

  Place(this.name, this.stars, this.description);

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
    final title_starts = Row(
      children: <Widget>[new TitlePlace(this.name), generateStars()],
    );

    return Column(
      children: <Widget>[
        title_starts,
        new DescriptionPlace(this.description),
      ],
    );
  }
}
