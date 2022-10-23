import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inquire/model/question/question.dart';

import '/model/progress_state/progress_state.dart';
import '/provider/question_list_provider.dart';
import '/util/log.dart';

class ProgressNotifier extends StateNotifier<ProgressState> with LogMixin {
  ProgressNotifier(this.ref) : super(const ProgressState.inactive());

  final Ref ref;

  late final _questions = ref.read(questionListProvider);
  late final _random = math.Random();

  Question _getRandomQuestion({
    required List<Question> questions,
  }) {
    final nextIndex = _random.nextInt(questions.length);
    return questions[nextIndex];
  }

  Future<void> start() async {
    log('start');

    state = ProgressState.active(
      currentQuestion: _getRandomQuestion(questions: _questions),
      remainingQuestions: _questions,
    );
  }

  Future<void> nextQuestion() async {
    log('nextQuestion');

    state.when(
      finished: () {
        throw StateError('Game is already finished');
      },
      active: (currentQuestion, remainingQuestions) {
        if (remainingQuestions.isEmpty) {
          state = const ProgressState.finished();
        } else {
          final question = _getRandomQuestion(
            questions: remainingQuestions,
          );
          state = ProgressState.active(
            currentQuestion: question,
            remainingQuestions: remainingQuestions
                .whereNot((element) => element.id == question.id)
                .toList(),
          );
        }
      },
      inactive: () {
        throw StateError('Game must be started before calling nextQuestion()');
      },
    );
  }

  Future<void> reset() async {
    log('reset');
    state = const ProgressState.inactive();
  }

  @override
  set state(ProgressState value) {
    log('state: $value');
    super.state = value;
  }
}

final progressProvider = StateNotifierProvider<ProgressNotifier, ProgressState>(
  ProgressNotifier.new,
);
