import 'package:flutter/material.dart';

class ExpandableTextController extends ValueNotifier<bool> {
  ExpandableTextController({bool isExpanded = false}) : super(isExpanded);

  bool get expanded => value;
  set expanded(bool value) => this.value = value;

  void toggle() => value = !value;
}

class ExpandableText extends StatefulWidget {
  const ExpandableText({
    super.key,
    required this.text,
    required this.maxLines,
    this.controller,
    this.initiallyExpanded,
    this.animationDuration,
    this.animationCurve,
    this.onExpansionChanged,
    this.textDirection,
    this.textAlign,
    this.style,
  })  : _internalController = controller == null,
        assert(maxLines > 0),
        assert(controller == null || initiallyExpanded == null);

  final String text;

  /// Defaults to false when the controller is null, otherwise defaults to the
  /// value of [ExpandableTextController.value].
  final bool? initiallyExpanded;

  final int maxLines;

  final ExpandableTextController? controller;

  /// Defaults to 500ms.
  final Duration? animationDuration;

  /// Defaults to [Curves.fastLinearToSlowEaseIn].
  final Curve? animationCurve;

  final ValueChanged<bool>? onExpansionChanged;

  final TextDirection? textDirection;
  final TextAlign? textAlign;
  final TextStyle? style;

  final bool _internalController;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late final controller = widget.controller ??
      ExpandableTextController(isExpanded: widget.initiallyExpanded ?? false);

  @override
  void initState() {
    super.initState();

    controller.addListener(onExpansionChanged);
  }

  @override
  void dispose() {
    controller.removeListener(onExpansionChanged);

    if (widget._internalController) controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final duration =
        widget.animationDuration ?? const Duration(milliseconds: 500);
    final curve = widget.animationCurve ?? Curves.fastLinearToSlowEaseIn;
    final style = widget.style;
    final defaultTextStyle = DefaultTextStyle.of(context);
    final effectiveTextStyle = style != null
        ? defaultTextStyle.style.merge(style)
        : defaultTextStyle.style;
    final textAlign =
        widget.textAlign ?? defaultTextStyle.textAlign ?? TextAlign.start;
    final textDirection = widget.textDirection ?? Directionality.of(context);

    return GestureDetector(
      onTap: () => controller.toggle(),
      child: ValueListenableBuilder<bool>(
        valueListenable: controller,
        builder: (context, isExpanded, _) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final textPainter = TextPainter(
                text: TextSpan(text: widget.text, style: effectiveTextStyle),
                textAlign: textAlign,
                textDirection: textDirection,
                maxLines: widget.maxLines,
              )..layout(maxWidth: constraints.maxWidth);

              final isTextOverflowing = textPainter.didExceedMaxLines;

              return AnimatedSize(
                duration: duration,
                curve: curve,
                alignment: Alignment.topLeft,
                child: Text(
                  widget.text,
                  maxLines: switch (isTextOverflowing) {
                    true when !isExpanded => widget.maxLines,
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
        },
      ),
    );
  }

  void onExpansionChanged() {
    widget.onExpansionChanged?.call(controller.value);
  }
}
