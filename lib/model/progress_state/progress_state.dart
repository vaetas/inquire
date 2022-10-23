import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inquire/model/question/question.dart';

part 'progress_state.freezed.dart';

@freezed
class ProgressState with _$ProgressState {
  const factory ProgressState.inactive() = ProgressStateInactive;

  const factory ProgressState.active({
    required Question currentQuestion,
    required List<Question> remainingQuestions,
  }) = ProgressStateActive;

  const factory ProgressState.finished() = ProgressStateFinished;
}
