import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inquire/model/question/question.dart';
import 'package:inquire/provider/question_list_provider.dart';
import 'package:inquire/repository/question_repository.dart';
import 'package:inquire/screen/question_list_screen.dart';
import 'package:mocktail/mocktail.dart';

class MockQuestionRepository extends Mock implements QuestionRepository {}

void main() {
  late MockQuestionRepository questionRepository;

  const mockQuestion1 = Question(id: 1, text: 'ABC');
  const mockQuestion2 = Question(id: 2, text: 'XYZ');

  Widget buildScreen() {
    return ProviderScope(
      overrides: [
        questionListProvider.overrideWithProvider(
          StateNotifierProvider(
            (ref) =>
                QuestionListNotifier(questionRepository: questionRepository)
                  ..load(),
          ),
        ),
      ],
      child: const MaterialApp(
        home: QuestionListScreen(),
      ),
    );
  }

  void setupQuestionListProvider() {
    questionRepository = MockQuestionRepository();

    when(questionRepository.getQuestions)
        .thenReturn([mockQuestion1, mockQuestion2]);
  }

  // ignore: unnecessary_lambdas
  setUp(() {
    setupQuestionListProvider();
  });

  testWidgets('QuestionListScreen displays questions', (tester) async {
    await tester.pumpWidget(buildScreen());
    await tester.pumpAndSettle();

    verify(questionRepository.getQuestions).called(1);
    verifyNoMoreInteractions(questionRepository);

    expect(find.byType(QuestionTile), findsNWidgets(2));
    expect(find.text(mockQuestion1.text), findsOneWidget);
    expect(find.text(mockQuestion2.text), findsOneWidget);
  });
}
