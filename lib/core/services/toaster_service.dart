import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/toast.dart';
import 'package:flutter_manga_reader/navigation/router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toaster_service.g.dart';

const _kDefaultToastDuration = Duration(seconds: 5);
const _kDefaultFadeInDuration = Duration(milliseconds: 350);

@Riverpod(keepAlive: true)
ToasterService toasterService(ToasterServiceRef ref) => ToasterService();

class ToasterService {
  final _overlayQueue = ListQueue<ToastEntry>();

  ToastEntry? _toastEntry;
  Timer? _timer;
  bool _isDismissing = false;

  /// Show a toast with the given [child] wrapped in a [ToastWidget].
  ///
  /// The [toastDuration] is the duration the toast will be displayed, default
  /// is 5 seconds.
  ///
  /// The [fadeDuration] is the duration of the fade in and fade out animation,
  /// default is 350 milliseconds.
  Future<void> showToast(
    Widget child, {
    Duration toastDuration = _kDefaultToastDuration,
    Duration fadeDuration = _kDefaultFadeInDuration,
  }) async {
    final toastKey = GlobalKey<ToasterContainerState>();
    final newChild = ToasterContainer(
      key: toastKey,
      toastDuration: toastDuration,
      fadeDuration: fadeDuration,
      child: ToastWidget(child: child),
    );

    final newEntry = OverlayEntry(
      builder: (context) {
        final bottomPadding = MediaQuery.viewPaddingOf(context).bottom + 8;
        return Positioned(
          bottom: bottomPadding,
          left: 24,
          right: 24,
          child: newChild,
        );
      },
    );

    _overlayQueue.add(
      ToastEntry(
        key: toastKey,
        toastDuration: toastDuration,
        fadeDuration: fadeDuration,
        entry: newEntry,
      ),
    );

    await _removeCurrentToastAndShowNext();
  }

  OverlayState? get _overlay => navigatorKey.currentState?.overlay;

  void _showOverlay() {
    if (_overlayQueue.isEmpty) {
      _toastEntry = null;
      return;
    }
    final toastEntry = _overlayQueue.removeFirst();
    _toastEntry = toastEntry;
    final entry = toastEntry.entry;
    _overlay?.insert(entry);

    _timer = Timer(
      toastEntry.toastDuration,
      () => _removeCurrentToastAndShowNext(animated: true),
    );
  }

  Future<void> _removeCurrentToastAndShowNext({bool animated = false}) async {
    if (_isDismissing) return;

    _timer?.cancel();

    if (_toastEntry case final toastEntry? when animated) {
      _isDismissing = true;
      toastEntry.key.currentState?.hide();
      await Future<void>.delayed(toastEntry.fadeDuration);
      _isDismissing = false;
    }

    _timer = null;
    _toastEntry?.entry.remove();
    _toastEntry = null;

    _showOverlay();
  }
}
