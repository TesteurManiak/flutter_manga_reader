import 'package:flutter/material.dart';

const _kShownByDefault = true;
const _kDefaultDuration = Duration(milliseconds: 300);

typedef SlidableWidgetBuilder = Widget Function(
  BuildContext context,
  // ignore: avoid_positional_boolean_parameters
  bool isShown,
);

class Slidable extends StatefulWidget {
  Slidable({
    super.key,
    required this.height,
    required Widget child,
    this.controller,
    this.initiallyShown,
    this.duration,
  }) : builder = ((_, __) => child);

  const Slidable.builder({
    super.key,
    required this.height,
    required this.builder,
    this.controller,
    this.initiallyShown,
    this.duration,
  });

  final SlidableController? controller;

  /// Defaults to 300ms.
  final Duration? duration;

  /// {@template initially_shown}
  /// Defaults to true.
  /// {@endtemplate}
  final bool? initiallyShown;

  final double height;
  final SlidableWidgetBuilder builder;

  @override
  State<Slidable> createState() => _SlidableState();
}

class _SlidableState extends State<Slidable> {
  late final internalController = SlidableController(
    initiallyShown: widget.initiallyShown ?? _kShownByDefault,
  );

  bool? isShown;

  SlidableController? controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    updateController();
    isShown = controller?.isShown;
  }

  @override
  void didUpdateWidget(covariant Slidable oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller != oldWidget.controller) {
      updateController();
      isShown = controller?.isShown;
    }
  }

  @override
  void dispose() {
    controller?.removeListener(onShownChanged);
    controller = null;

    internalController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isShown = this.isShown ?? widget.initiallyShown ?? _kShownByDefault;

    return AnimatedContainer(
      duration: widget.duration ?? _kDefaultDuration,
      height: isShown ? widget.height : 0,
      child: Wrap(children: [widget.builder(context, isShown)]),
    );
  }

  void onShownChanged() {
    setState(() => isShown = controller?.isShown);
  }

  void updateController() {
    final newController = widget.controller ??
        DefaultSlidableController.maybeOf(context) ??
        internalController;

    if (newController == controller) return;

    controller?.removeListener(onShownChanged);
    controller = newController;
    controller?.addListener(onShownChanged);
  }
}

class SlidableController extends ChangeNotifier {
  SlidableController({
    bool initiallyShown = _kShownByDefault,
  }) : _isShown = initiallyShown;

  bool _isShown;
  bool get isShown => _isShown;

  void show() {
    _isShown = true;
    notifyListeners();
  }

  void hide() {
    _isShown = false;
    notifyListeners();
  }

  void toggle() {
    _isShown = !_isShown;
    notifyListeners();
  }
}

/// {@template default_slidable_controller}
/// Widget that provides a [SlidableController] to its descendants.
/// {@endtemplate}
class DefaultSlidableController extends StatefulWidget {
  /// {@macro default_slidable_controller}
  const DefaultSlidableController({
    super.key,
    this.initiallyShown,
    required this.child,
  });

  /// {@macro initially_shown}
  final bool? initiallyShown;

  final Widget child;

  @override
  State<DefaultSlidableController> createState() =>
      _DefaultSlidableControllerState();

  static SlidableController? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_DefaultSlidableControllerScope>()
        ?.controller;
  }
}

class _DefaultSlidableControllerState extends State<DefaultSlidableController> {
  late final controller = SlidableController(
    initiallyShown: widget.initiallyShown ?? _kShownByDefault,
  );

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _DefaultSlidableControllerScope(
      controller: controller,
      child: widget.child,
    );
  }
}

class _DefaultSlidableControllerScope extends InheritedWidget {
  const _DefaultSlidableControllerScope({
    required this.controller,
    required super.child,
  });

  final SlidableController controller;

  @override
  bool updateShouldNotify(_DefaultSlidableControllerScope oldWidget) {
    return controller != oldWidget.controller;
  }
}

class SlidablePreferredSize extends StatefulWidget
    implements PreferredSizeWidget {
  const SlidablePreferredSize({
    super.key,
    this.controller,
    this.initiallyShown,
    this.duration,
    required this.child,
  });

  final SlidableController? controller;
  final bool? initiallyShown;
  final Duration? duration;
  final PreferredSizeWidget child;

  @override
  State<SlidablePreferredSize> createState() => _SlidablePreferredSizeState();

  @override
  Size get preferredSize => child.preferredSize;
}

class _SlidablePreferredSizeState extends State<SlidablePreferredSize>
    with SingleTickerProviderStateMixin {
  late final internalController = SlidableController(
    initiallyShown: widget.initiallyShown ?? _kShownByDefault,
  );

  late final animationController = AnimationController(
    vsync: this,
    duration: widget.duration ?? _kDefaultDuration,
    value: widget.initiallyShown ?? _kShownByDefault ? 1 : 0,
  );

  SlidableController? controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    updateController();
    onShownChanged();
  }

  @override
  void didUpdateWidget(covariant SlidablePreferredSize oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller != oldWidget.controller) {
      updateController();
      onShownChanged();
    }
  }

  @override
  void dispose() {
    controller?.removeListener(onShownChanged);
    controller = null;

    internalController.dispose();
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0, -1),
      ).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.fastOutSlowIn,
        ),
      ),
      child: widget.child,
    );
  }

  void onShownChanged() {
    if (controller?.isShown ?? false) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
  }

  void updateController() {
    final newController = widget.controller ??
        DefaultSlidableController.maybeOf(context) ??
        internalController;

    if (newController == controller) return;

    controller?.removeListener(onShownChanged);
    controller = newController;
    controller?.addListener(onShownChanged);
  }
}