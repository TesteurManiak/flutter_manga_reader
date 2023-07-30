import 'package:flutter/material.dart';

class GradientImage extends StatelessWidget {
  const GradientImage({
    super.key,
    required this.image,
    required this.gradient,
  });

  final ImageProvider image;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: gradient.createShader,
      blendMode: BlendMode.srcATop,
      child: Image(
        image: image,
        fit: BoxFit.cover,
      ),
    );
  }
}
