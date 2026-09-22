import 'package:flutter/material.dart';
import '../models/question.dart';
import '../theme/app_theme.dart';
import '../widgets/responsive_center.dart';
import 'difficulty_screen.dart';
import 'home_screen.dart';

class ResultsScreen extends StatelessWidget {
  final Topic topic;
  final Difficulty difficulty;
  final int correctCount;
  final int total;

  const ResultsScreen({
    super.key,
    required this.topic,
    required this.difficulty,
    required this.correctCount,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final wrong = total - correctCount;
    final pct = total == 0 ? 0.0 : correctCount / total;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ResponsiveCenter(
            maxWidth: 480,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${topic.name.toUpperCase()} · ${difficulty.label.toUpperCase()}',
                  style: TextStyle(
                    fontSize: 11,
                    color: AppColors.ink.withOpacity(0.5),
                    letterSpacing: 0.4,
                  ),
                ),
                const SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    text: '$correctCount',
                    style: AppTextStyles.displaySerif.copyWith(
                      color: AppColors.ink,
                      fontSize: 58,
                    ),
                    children: [
                      TextSpan(
                        text: '/$total',
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColors.ink.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  pct >= 0.8
                      ? 'Strong finish.'
                      : pct >= 0.5
                      ? 'Solid effort — a few to revisit.'
                      : 'Worth another attempt.',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.ink.withOpacity(0.6),
                  ),
                ),
                const SizedBox(height: 28),
                _StatBar(
                  label: 'Correct',
                  value: correctCount,
                  total: total,
                  color: AppColors.moss,
                ),
                const SizedBox(height: 10),
                _StatBar(
                  label: 'Incorrect',
                  value: wrong,
                  total: total,
                  color: AppColors.raspberry,
                ),
                const SizedBox(height: 28),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (_) => DifficultyScreen(topic: topic),
                      ),
                      (route) => route.isFirst,
                    ),
                    child: const Text('Try again'),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                    (route) => false,
                  ),
                  child: Text(
                    'Back to topics',
                    style: TextStyle(color: AppColors.ink.withOpacity(0.6)),
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

class _StatBar extends StatelessWidget {
  final String label;
  final int value;
  final int total;
  final Color color;

  const _StatBar({
    required this.label,
    required this.value,
    required this.total,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final fraction = total == 0 ? 0.0 : value / total;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.ink.withOpacity(0.7),
              ),
            ),
            Text(
              '$value',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.ink,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: LinearProgressIndicator(
            value: fraction,
            minHeight: 6,
            backgroundColor: AppColors.ink.withOpacity(0.08),
            valueColor: AlwaysStoppedAnimation(color),
          ),
        ),
      ],
    );
  }
}
