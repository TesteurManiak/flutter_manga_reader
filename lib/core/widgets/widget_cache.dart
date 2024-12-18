import 'package:flutter/material.dart';

typedef WidgetCacheBuilder<T> = Widget Function(BuildContext context, T data);

class WidgetCache<T> extends StatefulWidget {
  const WidgetCache({
    required this.value,
    required this.builder,
    super.key,
  });

  final T value;
  final WidgetCacheBuilder<T> builder;

  @override
  State<WidgetCache<T>> createState() => _WidgetCacheState<T>();
}

class _WidgetCacheState<T> extends State<WidgetCache<T>> {
  late Widget cache;
  T? previousValue;

  @override
  Widget build(BuildContext context) {
    if (identical(widget.value, previousValue) == false) {
      previousValue = widget.value;
      cache = Builder(
        builder: (context) => widget.builder(context, widget.value),
      );
    }
    return cache;
  }
}
