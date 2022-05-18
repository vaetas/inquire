import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_state.freezed.dart';

@freezed
class ProgressState with _$ProgressState {
  const factory ProgressState.inactive() = ProgressStateInactive;

  const factory ProgressState.active({
    required int currentQuestion,
    required List<int> finishedQuestions,
  }) = ProgressStateActive;

  const factory ProgressState.finished() = ProgressStateFinished;
}
