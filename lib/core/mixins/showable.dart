import 'package:flutter/material.dart';

/// The default duration for a snackbar. (Equals to 4 seconds)
const kDefaultSnackBarDuration = Duration(seconds: 4);

/// A mixin that adds a `show` method to a widget to display it as a dialog.
@optionalTypeArgs
mixin ShowableDialogMixin<T> on Widget {
  /// Shows a dialog by calling [showDialog] with this widget as its content.
  Future<T?> show(
    BuildContext context, {
    bool barrierDismissible = true,
    bool useSafeArea = true,
    bool useRootNavigator = true,
  }) {
    return showDialog<T>(
      context: context,
      builder: (context) => this,
      barrierDismissible: barrierDismissible,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
    );
  }
}

/// A mixin that adds a `show` method to a widget to display it as a snackbar.
mixin ShowableSnackBarMixin on Widget {
  /// Shows a [SnackBar] at the bottom of the scaffold using this widget as its
  /// content.
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> show(
    BuildContext context, {
    Color? backgroundColor,
    double? elevation,
    Duration duration = kDefaultSnackBarDuration,
    SnackBarBehavior? behavior,
    SnackBarAction? action,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: this,
        backgroundColor: backgroundColor,
        elevation: elevation,
        duration: duration,
        behavior: behavior,
        action: action,
      ),
    );
  }
}

@optionalTypeArgs
mixin ShowableBottomSheetMixin<T> on Widget {
  Future<T?> show(
    BuildContext context, {
    bool isScrollControlled = false,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: isScrollControlled,
      builder: (_) => this,
    );
  }
}
