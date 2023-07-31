import 'package:flutter/material.dart';

/// Base view for the settings submenus.
class GenericSettingsView extends StatelessWidget {
  const GenericSettingsView({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: children,
      ),
    );
  }
}
