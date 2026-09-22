import 'package:flutter/material.dart';
import '../data/question_bank.dart';
import '../models/question.dart';
import '../theme/app_theme.dart';
import '../widgets/responsive_center.dart';
import '../widgets/trail_progress.dart';
import 'results_screen.dart';

class QuizScreen extends StatefulWidget {
  final Topic topic;
  final Difficulty difficulty;

  const QuizScreen({super.key, required this.topic, required this.difficulty});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final List<Question> _questions;
  int _index = 0;
  int? _selected; // option index the user picked for the current question
  int _correctCount = 0;

  @override
  void initState() {
    super.initState();
    // Questions are pulled straight from the bank, filtered by the topic
    // and difficulty chosen on the previous screen.
    _questions = questionsFor(widget.topic.id, widget.difficulty);
  }

  Question get _current => _questions[_index];
  bool get _answered => _selected != null;

  void _select(int optionIndex) {
    if (_answered) return; // lock once answered
    setState(() {
      _selected = optionIndex;
      if (optionIndex == _current.correctIndex) _correctCount++;
    });
  }

  void _next() {
    if (_index == _questions.length - 1) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => ResultsScreen(
            topic: widget.topic,
            difficulty: widget.difficulty,
            correctCount: _correctCount,
            total: _questions.length,
          ),
        ),
      );
      return;
    }
    setState(() {
      _index++;
      _selected = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('No questions yet for ${widget.topic.name} · ${widget.difficulty.label}'),
        ),
      );
    }

    final isCorrect = _selected == _current.correctIndex;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          child: ResponsiveCenter(
            maxWidth: 640,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TrailProgress(total: _questions.length, currentIndex: _index),
              const SizedBox(height: 12),
              Text(
                'Question ${_index + 1} of ${_questions.length} · ${widget.topic.name} · ${widget.difficulty.label}',
                style: TextStyle(fontSize: 11, color: AppColors.ink.withOpacity(0.5)),
              ),
              const SizedBox(height: 10),
              Text(
                _current.prompt,
                style: AppTextStyles.displaySerif.copyWith(color: AppColors.ink, fontSize: 20),
              ),
              const SizedBox(height: 18),
              ...List.generate(_current.options.length, (i) {
                return _OptionTile(
                  label: String.fromCharCode(65 + i),
                  text: _current.options[i],
                  state: !_answered
                      ? _OptionState.idle
                      : i == _current.correctIndex
                          ? _OptionState.correct
                          : i == _selected
                              ? _OptionState.wrong
                              : _OptionState.idle,
                  onTap: () => _select(i),
                );
              }),
              const Spacer(),
              // Explanation always shows once the question is answered,
              // whether the pick was right or wrong.
              if (_answered) ...[
                _ExplanationCard(isCorrect: isCorrect, explanation: _current.explanation),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _next,
                    child: Text(
                      _index == _questions.length - 1 ? 'See results' : 'Next question →',
                    ),
                  ),
                ),
              ],
            ],
            ),
          ),
        ),
      ),
    );
  }
}

enum _OptionState { idle, correct, wrong }

class _OptionTile extends StatelessWidget {
  final String label;
  final String text;
  final _OptionState state;
  final VoidCallback onTap;

  const _OptionTile({
    required this.label,
    required this.text,
    required this.state,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color border;
    final Color? fill;
    final Color badgeColor;
    switch (state) {
      case _OptionState.correct:
        border = AppColors.moss;
        fill = AppColors.moss.withOpacity(0.08);
        badgeColor = AppColors.moss;
        break;
      case _OptionState.wrong:
        border = AppColors.raspberry;
        fill = AppColors.raspberry.withOpacity(0.08);
        badgeColor = AppColors.raspberry;
        break;
      case _OptionState.idle:
        border = AppColors.ink.withOpacity(0.12);
        fill = null;
        badgeColor = Colors.transparent;
        break;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: border, width: 1.5),
            color: fill,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                width: 22,
                height: 22,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: state == _OptionState.idle ? Colors.transparent : badgeColor,
                  border: Border.all(
                    color: state == _OptionState.idle ? AppColors.ink.withOpacity(0.25) : badgeColor,
                    width: 1.5,
                  ),
                ),
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: state == _OptionState.idle ? AppColors.ink.withOpacity(0.6) : Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(child: Text(text, style: const TextStyle(fontSize: 14, color: AppColors.ink))),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExplanationCard extends StatelessWidget {
  final bool isCorrect;
  final String explanation;

  const _ExplanationCard({required this.isCorrect, required this.explanation});

  @override
  Widget build(BuildContext context) {
    final color = isCorrect ? AppColors.moss : AppColors.raspberry;
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: const BorderRadius.horizontal(right: Radius.circular(10)),
        border: Border(left: BorderSide(color: color, width: 3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(isCorrect ? Icons.check_circle_outline : Icons.info_outline, size: 15, color: color),
              const SizedBox(width: 6),
              Text(
                isCorrect ? 'Correct' : 'Not quite',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: color),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            explanation,
            style: TextStyle(fontSize: 12.5, height: 1.4, color: AppColors.ink.withOpacity(0.72)),
          ),
        ],
      ),
    );
  }
}
