import 'dart:math';

import 'package:flutter/material.dart';

class AsciiEmojiWidget extends StatelessWidget {
  const AsciiEmojiWidget(
    this.emoji, {
    super.key,
    this.size,
  });

  factory AsciiEmojiWidget.random({double? size}) {
    final index = Random().nextInt(AsciiEmoji.values.length);
    final emoji = AsciiEmoji.values[index];
    return AsciiEmojiWidget(emoji, size: size);
  }

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
      textAlign: TextAlign.center,
    );
  }
}

enum AsciiEmoji {
  /// ¯\_(ツ)_/¯
  raiseShoulders('¯\\_(ツ)_/¯'),

  /// ⊙﹏⊙
  confused('⊙﹏⊙'),

  /// ･o･;
  sweat('･o･;'),

  /// Σ(ಠ_ಠ)
  surprised('Σ(ಠ_ಠ)'),

  /// ಥ_ಥ
  crying('ಥ_ಥ'),

  /// (˘･_･˘)
  shy('(˘･_･˘)'),

  /// (；￣Д￣)
  scared('(；￣Д￣)'),

  /// (･Д･。
  angry('(･Д･。');

  const AsciiEmoji(this.ascii);

  final String ascii;

  @override
  String toString() => ascii;
}
