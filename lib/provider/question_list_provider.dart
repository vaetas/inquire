import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/model/question/question.dart';
import '/repository/question_repository.dart';
import '/util/locator.dart';

class QuestionListNotifier extends StateNotifier<List<Question>> {
  QuestionListNotifier({
    required this.questionRepository,
  }) : super([]);

  final QuestionRepository questionRepository;

  void load() {
    state = questionRepository.getQuestions();
  }
}

final questionListProvider =
    StateNotifierProvider<QuestionListNotifier, List<Question>>(
  (ref) => QuestionListNotifier(
    questionRepository: locator<QuestionRepository>(),
  )..load(),
);
