import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/component/back_button.dart';
import '/provider/progress_provider.dart';
import '/provider/question_list_provider.dart';
import '/util/palette.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const backgroundColor = Palette.primaryColor;
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
              children: const [
                CustomBackButton(),
              ],
            ),
            ...progress.when(
              active: (currentQuestion, finishedQuestions) {
                final question = ref.watch(questionProvider(currentQuestion));
                return [
                  Expanded(
                    child: PageTransitionSwitcher(
                      transitionBuilder: (
                        child,
                        primaryAnimation,
                        secondaryAnimation,
                      ) {
                        return SharedAxisTransition(
                          animation: primaryAnimation,
                          secondaryAnimation: secondaryAnimation,
                          transitionType: SharedAxisTransitionType.horizontal,
                          fillColor: Colors.black,
                          child: child,
                        );
                      },
                      child: _QuestionTextView(
                        key: ValueKey(question.text.hashCode),
                        text: question.text,
                      ),
                    ),
                  ),
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
      focusColor: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.white24,
            width: double.infinity,
            height: 1,
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            padding: EdgeInsets.only(
              bottom: padding.bottom + 24,
              top: 24,
              left: 16,
              right: 16,
            ),
            child: Center(
              child: Text(
                'Next question'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: double.infinity,
          padding: EdgeInsets.only(
            top: constraints.maxHeight * 0.2,
            left: 24,
            right: 24,
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: Palette.serifFont,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
