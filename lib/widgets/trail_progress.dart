import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Row of dots connected by dashed segments, showing quiz progress.
/// Done questions are moss, the current one is a larger marigold dot,
/// upcoming ones are faint outlines — mirrors the design concept exactly.
class TrailProgress extends StatelessWidget {
  final int total;
  final int currentIndex; // 0-based index of the question being shown

  const TrailProgress({
    super.key,
    required this.total,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(total * 2 - 1, (i) {
        if (i.isOdd) {
          return Expanded(
            child: Container(
              height: 1,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColors.ink.withOpacity(0.15),
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          );
        }
        final dotIndex = i ~/ 2;
        final isDone = dotIndex < currentIndex;
        final isNow = dotIndex == currentIndex;
        final size = isNow ? 10.0 : 7.0;
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isDone
                ? AppColors.moss
                : isNow
                    ? AppColors.marigold
                    : AppColors.ink.withOpacity(0.15),
          ),
        );
      }),
    );
  }
}
