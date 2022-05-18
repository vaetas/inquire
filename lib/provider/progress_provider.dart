import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inquire/model/progress_state/progress_state.dart';
import 'package:inquire/provider/question_list_provider.dart';
import 'package:inquire/util/log.dart';

class ProgressNotifier extends StateNotifier<ProgressState> with LogMixin {
  ProgressNotifier(
    this.read,
  ) : super(const ProgressState.inactive());

  final Reader read;

  late final _questions = read(questionListProvider);
  late final _random = math.Random();

  int? _generateNextIndex({
    required List<int> finishedQuestions,
  }) {
    final availableQuestions = _questions.whereNotIndexed(
      (i, _) => finishedQuestions.contains(i),
    );
    if (availableQuestions.isEmpty) return null;

    final nextIndex = _random.nextInt(availableQuestions.length);
    return availableQuestions.elementAt(nextIndex).id;
  }

  void start() {
    log('start');

    state = ProgressState.active(
      currentQuestion: _generateNextIndex(finishedQuestions: const [])!,
      finishedQuestions: const [],
    );
  }

  void nextQuestion() {
    log('nextQuestion');

    state.when(
      finished: () {
        throw StateError('Game is already finished');
      },
      active: (currentQuestion, finishedQuestions) {
        final nextIndex = _generateNextIndex(
          finishedQuestions: finishedQuestions,
        );
        if (nextIndex == null) {
          state = const ProgressState.finished();
        } else {
          state = ProgressState.active(
            currentQuestion: nextIndex,
            finishedQuestions: [...finishedQuestions, nextIndex],
          );
        }
      },
      inactive: () {
        throw StateError('Game must be started before calling nextQuestion()');
      },
    );
  }

  void reset() {
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
  (ref) => ProgressNotifier(ref.read),
);
