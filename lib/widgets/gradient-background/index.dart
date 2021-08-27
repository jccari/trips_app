import 'package:flutter/material.dart';

class GradientBackgroundWidget extends StatelessWidget {
  final double height;

  GradientBackgroundWidget({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}
