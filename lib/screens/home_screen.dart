import 'package:flutter/material.dart';
import '../data/question_bank.dart';
import '../models/question.dart';
import '../theme/app_theme.dart';
import '../theme/breakpoints.dart';
import '../widgets/responsive_center.dart';
import 'difficulty_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Curio',
                  style: AppTextStyles.displaySerifItalic.copyWith(
                    color: AppColors.ink,
                    fontSize: 28,
                  )),
              const SizedBox(height: 4),
              Text(
                'What are you curious about today?',
                style: TextStyle(color: AppColors.ink.withOpacity(0.55), fontSize: 13),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final columns = gridColumnsFor(constraints.maxWidth);
                    return ResponsiveCenter(
                      maxWidth: 960,
                      child: GridView.builder(
                        itemCount: topics.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: columns,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 1.05,
                        ),
                        itemBuilder: (context, i) {
                          final topic = topics[i];
                          final count = allQuestions.where((q) => q.topicId == topic.id).length;
                          return _TopicCard(topic: topic, count: count);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopicCard extends StatelessWidget {
  final Topic topic;
  final int count;

  const _TopicCard({required this.topic, required this.count});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: topic.tint,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => DifficultyScreen(topic: topic)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(topic.icon, color: topic.accent, size: 26),
              const Spacer(),
              Text(
                topic.name,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.ink),
              ),
              const SizedBox(height: 2),
              Text(
                '$count questions',
                style: TextStyle(fontSize: 11, color: AppColors.ink.withOpacity(0.5)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
