import 'package:flutter/material.dart';

import '../gradient-background/index.dart';

class DetailAppBarWidget extends StatelessWidget {
  final String title;

  DetailAppBarWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBackgroundWidget(
          height: 250.0,
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 30.0,
                left: 20.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // horizontal images list
          ],
        )
      ],
    );
  }
}
