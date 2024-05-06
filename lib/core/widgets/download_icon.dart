import 'package:flutter/material.dart';

class DownloadIcon extends StatelessWidget {
  const DownloadIcon({
    required this.progress,
    super.key,
  });

  final double progress;

  @override
  Widget build(BuildContext context) {
    const downloadIcon = Icon(Icons.download_for_offline_outlined);
    final progress = this.progress;

    if (progress >= 1) {
      return const Icon(Icons.check_circle);
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        downloadIcon,
        if (progress > 0)
          SizedBox.square(
            dimension: 24,
            child: CircularProgressIndicator(value: progress),
          ),
      ],
    );
  }
}
