import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inquire/model/question/question.dart';
import 'package:inquire/repository/question_repository.dart';
import 'package:inquire/util/locator.dart';

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

final questionProvider = Provider.family<Question, int>((ref, index) {
  final questions = ref.watch(questionListProvider);
  return questions[index];
});
