import 'package:flutter/material.dart';

const _kShownByDefault = true;
const _kDefaultDuration = Duration(milliseconds: 300);

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
/// Creates a default [SlidableController] for the given [child] widget.
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

  /// The closest instance of [DefaultSlidableController] that encloses the
  /// given context, or null if none is found.
  ///
  /// Calling this method will create a dependency on the closest
  /// [DefaultSlidableController] in the [context], if there is one.
  ///
  /// See also:
  ///
  /// * [DefaultSlidableController.of], which is similar to this method, but
  /// asserts if no [DefaultSlidableController] is found.
  static SlidableController? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_DefaultSlidableControllerScope>()
        ?.controller;
  }

  /// The closest instance of [DefaultSlidableController] that encloses the
  /// given context.
  ///
  /// If no instance is found, this method will throw an exception.
  static SlidableController of(BuildContext context) {
    final controller = maybeOf(context);

    if (controller == null) {
      throw FlutterError(
        'DefaultSlidableController.of() called with a context that does not '
        'contain a DefaultSlidableController.\n'
        'No DefaultSlidableController ancestor could be found starting from '
        'the context that was passed to DefaultSlidableController.of(). This '
        'can happen because you are using a widget that looks for a '
        'DefaultSlidableController ancestor, but no such ancestor exists.\n'
        'The context used was:\n'
        '  $context',
      );
    }

    return controller;
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

class SlidablePreferredSize extends StatelessWidget
    implements PreferredSizeWidget {
  const SlidablePreferredSize({
    super.key,
    this.controller,
    this.initiallyShown,
    this.duration,
    required this.direction,
    required this.child,
  });

  final SlidableController? controller;
  final bool? initiallyShown;
  final Duration? duration;
  final SlideDirection direction;
  final PreferredSizeWidget child;

  @override
  Size get preferredSize => child.preferredSize;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      controller: controller,
      initiallyShown: initiallyShown,
      duration: duration,
      direction: direction,
      child: child,
    );
  }
}

class Slidable extends StatefulWidget {
  const Slidable({
    super.key,
    this.controller,
    this.initiallyShown,
    this.duration,
    required this.direction,
    required this.child,
  });

  final SlidableController? controller;
  final bool? initiallyShown;
  final Duration? duration;
  final SlideDirection direction;
  final Widget child;

  @override
  State<Slidable> createState() => _SlidableState();
}

class _SlidableState extends State<Slidable>
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
  void didUpdateWidget(covariant Slidable oldWidget) {
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
        end: widget.direction.offset,
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

enum SlideDirection {
  right(Offset(-1, 0)),
  left(Offset(1, 0)),
  down(Offset(0, 1)),
  up(Offset(0, -1));

  const SlideDirection(this.offset);

  final Offset offset;
}
