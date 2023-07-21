import 'package:flutter/material.dart';

/// Mixin used to implement a [PreferredSizeWidget] that has the same height as
/// the [AppBar].
mixin AppBarSizeMixin on Widget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
