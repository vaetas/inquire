import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inquire/model/progress_state/progress_state.dart';
import 'package:inquire/model/question/question.dart';
import 'package:inquire/provider/progress_provider.dart';
import 'package:inquire/provider/question_list_provider.dart';
import 'package:inquire/repository/question_repository.dart';
import 'package:inquire/screen/game_screen.dart';
import 'package:mocktail/mocktail.dart';

class MockQuestionRepository extends Mock implements QuestionRepository {}

void main() {
  late MockQuestionRepository questionRepository;
  late ProviderContainer providerContainer;

  const mockQuestion1 = Question(id: 1, text: 'ABC');
  const mockQuestion2 = Question(id: 2, text: 'XYZ');

  const questionList = [mockQuestion1, mockQuestion2];

  Widget buildScreen() {
    providerContainer = ProviderContainer(
      overrides: [
        questionListProvider.overrideWithProvider(
          StateNotifierProvider(
            (ref) =>
                QuestionListNotifier(questionRepository: questionRepository)
                  ..load(),
          ),
        )
      ],
    );

    return UncontrolledProviderScope(
      container: providerContainer,
      child: const MaterialApp(
        home: GameScreen(),
      ),
    );
  }

  void setupQuestionListProvider() {
    questionRepository = MockQuestionRepository();

    when(questionRepository.getQuestions).thenReturn(questionList);

    when(() => questionRepository.getQuestion(0)).thenReturn(mockQuestion1);
    when(() => questionRepository.getQuestion(1)).thenReturn(mockQuestion2);
  }

  // ignore: unnecessary_lambdas
  setUp(() {
    setupQuestionListProvider();
  });

  testWidgets('GameScreen shows questions', (tester) async {
    final usedQuestions = <Question>[];

    await tester.pumpWidget(buildScreen());
    await tester.pumpAndSettle();

    verify(questionRepository.getQuestions).called(1);
    verifyNoMoreInteractions(questionRepository);

    final nextQuestionButton = find.byType(NextQuestionButton);
    expect(nextQuestionButton, findsOneWidget);

    final questionView = find.byKey(const ValueKey('question_view'));
    expect(questionView, findsOneWidget);

    final initialState = providerContainer.read(progressProvider);
    expect(initialState, isA<ProgressStateActive>());

    final s = initialState as ProgressStateActive;
    final firstQuestion = s.currentQuestion;
    usedQuestions.add(firstQuestion);

    await tester.tap(nextQuestionButton);
    await tester.pump();

    final secondQuestion =
        providerContainer.read(progressProvider) as ProgressStateActive;
    expect(secondQuestion, isNot(equals(firstQuestion)));
  });
}
