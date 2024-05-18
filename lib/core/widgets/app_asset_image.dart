import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class AppAssetImage extends StatelessWidget {
  const AppAssetImage(
    this.asset, {
    super.key,
    this.width,
    this.height,
    this.color,
  });

  final String asset;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (asset.endsWith('.svg')) {
      return VectorGraphic(
        loader: AssetBytesLoader(asset),
        height: height,
        width: width,
        colorFilter: color?.toColorFilter(),
      );
    }

    return Image.asset(
      asset,
      height: height,
      width: width,
      color: color,
    );
  }
}

extension on Color {
  ColorFilter toColorFilter() {
    return ColorFilter.mode(this, BlendMode.srcIn);
  }
}
