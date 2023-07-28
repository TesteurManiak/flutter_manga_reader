import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';

/// {@template error_content}
/// Display an ascii art error emoji centered on the screen.
/// {@endtemplate}
class ErrorContent extends StatelessWidget {
  /// {@macro error_content}
  const ErrorContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        separator: const SizedBox(height: 16),
        children: [
          const AsciiEmojiWidget(AsciiEmoji.raiseShoulders),
          Text(
            context.strings.generic_error,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
