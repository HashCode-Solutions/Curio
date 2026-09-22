import 'package:flutter/material.dart';
import '../data/question_bank.dart';
import '../models/question.dart';
import '../theme/app_theme.dart';
import '../widgets/responsive_center.dart';
import 'quiz_screen.dart';

class DifficultyScreen extends StatelessWidget {
  final Topic topic;

  const DifficultyScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.paper,
        elevation: 0,
        title: Text('Choose a level',
            style: TextStyle(color: AppColors.ink.withOpacity(0.55), fontSize: 13)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
          child: ResponsiveCenter(
            maxWidth: 640,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(topic.name, style: AppTextStyles.displaySerif.copyWith(color: AppColors.ink, fontSize: 24)),
                const SizedBox(height: 28),
                SizedBox(
                  height: 260,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: Difficulty.values.map((d) {
                      final questionCount = questionsFor(topic.id, d).length;
                      return Expanded(
                        child: _PeakCard(
                          difficulty: d,
                          topicId: topic.id,
                          topic: topic,
                          questionCount: questionCount,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PeakCard extends StatelessWidget {
  final Difficulty difficulty;
  final String topicId;
  final Topic topic;
  final int questionCount;

  const _PeakCard({
    required this.difficulty,
    required this.topicId,
    required this.topic,
    required this.questionCount,
  });

  double get _height => switch (difficulty) {
        Difficulty.easy => 90.0,
        Difficulty.medium => 150.0,
        Difficulty.hard => 210.0,
      };

  @override
  Widget build(BuildContext context) {
    final enabled = questionCount > 0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: enabled
            ? () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => QuizScreen(topic: topic, difficulty: difficulty),
                  ),
                )
            : null,
        child: Opacity(
          opacity: enabled ? 1 : 0.35,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: _height,
                decoration: BoxDecoration(
                  color: difficulty.color,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                ),
              ),
              const SizedBox(height: 10),
              Text(difficulty.label,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.ink)),
              const SizedBox(height: 2),
              Text('$questionCount questions',
                  style: TextStyle(fontSize: 10, color: AppColors.ink.withOpacity(0.5))),
            ],
          ),
        ),
      ),
    );
  }
}
