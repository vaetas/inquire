import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:inquire/provider/progress_provider.dart';
import 'package:inquire/provider/question_list_provider.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgroundColor = Theme.of(context).primaryColor;
    final padding = MediaQuery.of(context).padding;

    final progress = ref.watch(progressProvider);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: padding.top,
          left: padding.left,
          right: padding.right,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                BackButton(
                  onPressed: () => context.pop(),
                  color: Colors.white,
                ),
              ],
            ),
            ...progress.when(
              active: (currentQuestion, finishedQuestions) {
                final question = ref.watch(questionProvider(currentQuestion));
                return [
                  _QuestionTextView(text: question.text),
                  _NextQuestionButton(
                    onPressed: () {
                      ref.read(progressProvider.notifier).nextQuestion();
                    },
                  ),
                ];
              },
              finished: () {
                return [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'All questions answered.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 56),
                ];
              },
              inactive: () {
                throw StateError('Invalid state');
              },
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

class _NextQuestionButton extends StatelessWidget {
  const _NextQuestionButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;

    return InkWell(
      onTap: onPressed,
      child: Container(
        color: const Color(0xff7280ce).withOpacity(0.8),
        width: double.infinity,
        padding: EdgeInsets.only(
          bottom: padding.bottom + 8,
          top: 24,
          left: 16,
          right: 16,
        ),
        child: Center(
          child: Text(
            'Next question',
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class _QuestionTextView extends StatelessWidget {
  const _QuestionTextView({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: EdgeInsets.only(
              top: constraints.minHeight * 0.2,
              left: 16,
              right: 16,
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ),
    );
  }
}
