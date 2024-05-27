import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      return SvgPicture.asset(
        asset,
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
