import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';

/// {@template error_content}
/// Display an ascii art error emoji centered on the screen.
/// {@endtemplate}
class ErrorContent extends StatelessWidget {
  /// {@macro error_content}
  const ErrorContent({
    super.key,
    this.message,
    this.retryMessage,
    this.onRetry,
  });

  final String? message;
  final String? retryMessage;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final strings = context.strings;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          AsciiEmojiWidget.random(),
          Text(
            message ?? strings.generic_error,
            style: textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          if (onRetry != null)
            TextButton(
              onPressed: onRetry,
              child: Text(retryMessage ?? strings.generic_retry),
            ),
        ],
      ),
    );
  }
}
