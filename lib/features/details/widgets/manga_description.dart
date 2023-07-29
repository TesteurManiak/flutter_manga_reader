import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/widgets/expandable_text.dart';

class MangaDescription extends StatefulWidget {
  const MangaDescription({
    super.key,
    required this.description,
  });

  final String description;

  @override
  State<MangaDescription> createState() => _MangaDescriptionState();
}

class _MangaDescriptionState extends State<MangaDescription> {
  final expandableTextController = ExpandableTextController();

  @override
  void initState() {
    super.initState();

    expandableTextController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    expandableTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ValueListenableBuilder(
      valueListenable: expandableTextController,
      builder: (context, isExpanded, _) {
        return GestureDetector(
          onTap: expandableTextController.toggle,
          behavior: HitTestBehavior.opaque,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: ExpandableText(
                        text: widget.description,
                        maxLines: 3,
                      ),
                    ),
                    if (!expandableTextController.expanded)
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                theme.scaffoldBackgroundColor.withOpacity(0.2),
                                theme.scaffoldBackgroundColor,
                              ],
                              stops: const [0, .9],
                            ),
                          ),
                          child: const Icon(Icons.keyboard_arrow_down_sharp),
                        ),
                      )
                  ],
                ),
                if (expandableTextController.expanded)
                  const Icon(Icons.keyboard_arrow_up_sharp)
              ],
            ),
          ),
        );
      },
    );
  }
}
