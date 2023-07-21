import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';

class RestoreDataView extends StatelessWidget {
  const RestoreDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO: Pick proto file
          },
          child: Text('Pick proto file'.hardcoded),
        ),
      ),
    );
  }
}
