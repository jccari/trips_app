import 'package:flutter/material.dart';
import '../common/star_list.dart';
import 'title_place.dart';
import 'description_place.dart';

class PlaceWidget extends StatelessWidget {
  final String name;
  final int stars;
  final String description;

  PlaceWidget({
    required this.name,
    required this.stars,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final titleStarts = Row(
      children: <Widget>[
        TitlePlaceWidget(
          label: this.name,
        ),
        StarList(
          stars: stars,
        ),
      ],
    );

    return Column(
      children: <Widget>[
        titleStarts,
        DescriptionPlaceWidget(
          description: this.description,
        ),
      ],
    );
  }
}
