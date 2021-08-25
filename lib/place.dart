import 'package:flutter/material.dart';
import 'components/star.dart';
import 'components/title_place.dart';
import 'components/description_place.dart';

class Place extends StatelessWidget{

  String name;
  int stars;
  String description;
  
  int maxStars = 5;

  Place(this.name, this.stars, this.description);

  Widget generateStars(){
    List<Widget> filledStars = List.filled(this.stars, new Star(true));
    List<Widget> emptyStars = List.filled(this.maxStars - this.stars, new Star(false));
    return Row( children: filledStars + emptyStars,);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title_starts = Row(
      children: <Widget>[
        new TitlePlace(this.name),
        generateStars()
      ],
    );

    return Column(
      children: <Widget>[
        title_starts,
        new DescriptionPlace(this.description),
      ],
    );
  }

}