import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';

class RestoreErrorSnackbar extends StatelessWidget with ShowableSnackBarMixin {
  const RestoreErrorSnackbar(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
