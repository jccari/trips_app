import 'package:flutter/material.dart';

class UserPhotoWidget extends StatelessWidget {
  String photoSource;

  UserPhotoWidget(this.photoSource);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 5.0,
        right: 5.0,
        bottom: 5.0,
      ),
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: AssetImage(this.photoSource),
      ),
    );
  }
}
