import 'package:flutter/material.dart';

class DownloadIcon extends StatelessWidget {
  const DownloadIcon({
    super.key,
    this.progress,
  });

  final double? progress;

  @override
  Widget build(BuildContext context) {
    const downloadIcon = Icon(Icons.download_for_offline_outlined);

    final progress = this.progress;
    if (progress == null) {
      // TODO(Guillaume): Return the icon with a continuous progress indicator around it.
      return const CircularProgressIndicator();
    }

    final inProgress = progress > 0 && progress < 1;

    if (inProgress) {
      return Stack(
        children: [
          downloadIcon,
          // TODO(Guillaume): Paint a progress circle on top of the icon.
          CircularProgressIndicator(value: progress),
        ],
      );
    }

    return progress >= 1 ? const Icon(Icons.check_circle) : downloadIcon;
  }
}
