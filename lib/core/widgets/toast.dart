import 'dart:async';

import 'package:flutter/material.dart';

class ToastWidget extends StatelessWidget {
  const ToastWidget({
    required this.child,
    this.backgroundColor,
    super.key,
  });

  final Color? backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final snackBarTheme = theme.snackBarTheme;
    final colorScheme = theme.colorScheme;

    final backgroundColor = this.backgroundColor ??
        snackBarTheme.backgroundColor ??
        colorScheme.inverseSurface;
    final textColor =
        snackBarTheme.contentTextStyle?.color ?? colorScheme.onInverseSurface;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: backgroundColor,
      ),
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 14, color: textColor),
        child: child,
      ),
    );
  }
}

class ToastEntry {
  const ToastEntry({
    required this.key,
    required this.toastDuration,
    required this.fadeDuration,
    required this.entry,
  });

  final GlobalKey<ToasterContainerState> key;
  final Duration toastDuration;
  final Duration fadeDuration;
  final OverlayEntry entry;
}

class ToasterContainer extends StatefulWidget {
  const ToasterContainer({
    required GlobalKey<ToasterContainerState> super.key,
    required this.toastDuration,
    required this.fadeDuration,
    required this.child,
  });

  final Duration toastDuration;
  final Duration fadeDuration;
  final Widget child;

  @override
  State<ToasterContainer> createState() => ToasterContainerState();
}

class ToasterContainerState extends State<ToasterContainer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _fadeAnimation;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.fadeDuration,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );

    show();
    _timer = Timer(widget.toastDuration, hide);
  }

  @override
  void deactivate() {
    _timer.cancel();
    _animationController.stop();
    super.deactivate();
  }

  @override
  void dispose() {
    _timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: widget.child,
        ),
      ),
    );
  }

  void show() => _animationController.forward();

  void hide() {
    _animationController.reverse();
    _timer.cancel();
  }
}
