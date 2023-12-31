import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';

/// {@template error_content}
/// Display an ascii art error emoji centered on the screen.
/// {@endtemplate}
class ErrorContent extends StatelessWidget {
  /// {@macro error_content}
  const ErrorContent({
    super.key,
    this.message,
    this.onRetry,
  });

  final String? message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        separator: const SizedBox(height: 16),
        children: [
          const AsciiEmojiWidget(AsciiEmoji.raiseShoulders),
          Text(
            message ?? context.strings.generic_error,
            textAlign: TextAlign.center,
          ),
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: Text(context.strings.generic_retry),
            ),
        ],
      ),
    );
  }
}
