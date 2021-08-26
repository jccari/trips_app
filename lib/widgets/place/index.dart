import 'package:flutter/material.dart';
import '../common/star_list.dart';
import 'title_place.dart';
import 'description_place.dart';

class Place extends StatelessWidget {
  final String name;
  final int stars;
  final String description;

  Place(this.name, this.stars, this.description);

  @override
  Widget build(BuildContext context) {
    final titleStarts = Row(
      children: <Widget>[new TitlePlaceWidget(this.name), StarList(stars)],
    );

    return Column(
      children: <Widget>[
        titleStarts,
        new DescriptionPlaceWidget(this.description),
      ],
    );
  }
}
