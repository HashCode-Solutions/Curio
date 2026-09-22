import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

enum Difficulty { easy, medium, hard }

extension DifficultyLabel on Difficulty {
  String get label => switch (this) {
        Difficulty.easy => 'Easy',
        Difficulty.medium => 'Medium',
        Difficulty.hard => 'Hard',
      };

  Color get color => switch (this) {
        Difficulty.easy => AppColors.moss,
        Difficulty.medium => AppColors.marigold,
        Difficulty.hard => AppColors.raspberry,
      };
}

class Topic {
  final String id;
  final String name;
  final IconData icon;
  final Color tint;
  final Color accent;

  const Topic({
    required this.id,
    required this.name,
    required this.icon,
    required this.tint,
    required this.accent,
  });
}

/// A single quiz question. [correctIndex] points into [options].
/// [explanation] is shown after the user answers, right or wrong —
/// this is what makes the "why" panel on the quiz screen possible.
class Question {
  final String topicId;
  final Difficulty difficulty;
  final String prompt;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  const Question({
    required this.topicId,
    required this.difficulty,
    required this.prompt,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}
