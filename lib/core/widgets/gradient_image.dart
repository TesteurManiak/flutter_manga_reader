import 'package:flutter/material.dart';

class GradientImage extends StatelessWidget {
  const GradientImage({
    super.key,
    required this.image,
    required this.gradient,
    this.height,
  });

  final ImageProvider image;
  final Gradient gradient;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: gradient,
          ),
        ),
      ],
    );
  }
}
