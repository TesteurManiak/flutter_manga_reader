import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/extensions/build_context_extensions.dart';
import 'package:flutter_manga_reader/core/widgets/ascii_emoji.dart';
import 'package:flutter_manga_reader/core/widgets/separated_column.dart';

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
    final textTheme = Theme.of(context).textTheme;
    final strings = context.strings;
    return Center(
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        separator: const SizedBox(height: 16),
        children: [
          AsciiEmojiWidget.random(),
          Text(
            message ?? strings.generic_error,
            style: textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: Text(strings.generic_retry),
            ),
        ],
      ),
    );
  }
}
