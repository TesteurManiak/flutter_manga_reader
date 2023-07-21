import 'package:flutter/material.dart';

class AsciiEmojiWidget extends StatelessWidget {
  const AsciiEmojiWidget(
    this.emoji, {
    super.key,
    this.size,
  });

  final AsciiEmoji emoji;

  /// Defaults to 64.0
  final double? size;

  @override
  Widget build(BuildContext context) {
    final localSize = size ?? 64.0;

    return Text(
      emoji.ascii,
      style: TextStyle(fontSize: localSize),
      maxLines: 1,
    );
  }
}

enum AsciiEmoji {
  raiseShoulders('¯\\_(ツ)_/¯'),
  confused('⊙﹏⊙');

  const AsciiEmoji(this.ascii);

  final String ascii;
}
