import 'package:flutter/material.dart';

class MangaDescription extends StatefulWidget {
  const MangaDescription({
    super.key,
    required this.description,
    required this.initiallyExpanded,
    this.onExpansionChanged,
  });

  final String description;
  final bool initiallyExpanded;
  final ValueChanged<bool>? onExpansionChanged;

  @override
  State<MangaDescription> createState() => _MangaDescriptionState();
}

class _MangaDescriptionState extends State<MangaDescription> {
  final animationDuration = const Duration(milliseconds: 300);

  late bool isExpanded = widget.initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        setState(() => isExpanded = !isExpanded);
        widget.onExpansionChanged?.call(isExpanded);
      },
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: _ExpandableText(
                    text: widget.description,
                    maxLines: 3,
                    isExpanded: isExpanded,
                    duration: animationDuration,
                  ),
                ),
                AnimatedPositioned(
                  duration: animationDuration,
                  bottom: isExpanded ? -30 : 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          theme.scaffoldBackgroundColor.withOpacity(0.2),
                          theme.scaffoldBackgroundColor,
                        ],
                        stops: const [0, .9],
                      ),
                    ),
                    child: AnimatedRotation(
                      duration: animationDuration,
                      turns: isExpanded ? 0.5 : 0,
                      child: const Icon(Icons.keyboard_arrow_down_sharp),
                    ),
                  ),
                ),
              ],
            ),
            if (isExpanded) const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class _ExpandableText extends StatelessWidget {
  const _ExpandableText({
    required this.text,
    required this.maxLines,
    required this.isExpanded,
    required this.duration,
  });

  final String text;
  final int maxLines;
  final bool isExpanded;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = DefaultTextStyle.of(context);
    final effectiveTextStyle = defaultTextStyle.style;
    final textAlign = defaultTextStyle.textAlign ?? TextAlign.start;
    final textDirection = Directionality.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final textPainter = TextPainter(
          text: TextSpan(text: text, style: effectiveTextStyle),
          textAlign: textAlign,
          textDirection: textDirection,
          maxLines: maxLines,
        )..layout(maxWidth: constraints.maxWidth);

        final isTextOverflowing = textPainter.didExceedMaxLines;

        return AnimatedSize(
          duration: duration,
          curve: Curves.fastLinearToSlowEaseIn,
          alignment: Alignment.topLeft,
          child: Text(
            text,
            maxLines: switch (isTextOverflowing) {
              true when !isExpanded => maxLines,
              _ => null,
            },
            overflow: switch (isTextOverflowing) {
              true when !isExpanded => TextOverflow.ellipsis,
              _ => null,
            },
            style: effectiveTextStyle,
          ),
        );
      },
    );
  }
}
