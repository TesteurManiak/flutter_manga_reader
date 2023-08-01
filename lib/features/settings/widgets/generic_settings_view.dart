import 'package:flutter/material.dart';

/// Base view for the settings submenus.
class GenericSettingsView extends StatelessWidget {
  const GenericSettingsView({
    super.key,
    required this.title,
    this.header,
    this.children = const [],
  });

  final String title;
  final Widget? header;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final header = this.header;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: [
          if (header != null) ...[
            header,
            const Divider(),
          ],
          ...children,
        ],
      ),
    );
  }
}
