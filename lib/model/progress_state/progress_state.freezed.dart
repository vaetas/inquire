// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'progress_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function(
            Question currentQuestion, List<Question> remainingQuestions)
        active,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function(
            Question currentQuestion, List<Question> remainingQuestions)?
        active,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(
            Question currentQuestion, List<Question> remainingQuestions)?
        active,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressStateInactive value) inactive,
    required TResult Function(ProgressStateActive value) active,
    required TResult Function(ProgressStateFinished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressStateInactive value)? inactive,
    TResult? Function(ProgressStateActive value)? active,
    TResult? Function(ProgressStateFinished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressStateInactive value)? inactive,
    TResult Function(ProgressStateActive value)? active,
    TResult Function(ProgressStateFinished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
          ProgressState value, $Res Function(ProgressState) then) =
      _$ProgressStateCopyWithImpl<$Res, ProgressState>;
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res, $Val extends ProgressState>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProgressStateInactiveCopyWith<$Res> {
  factory _$$ProgressStateInactiveCopyWith(_$ProgressStateInactive value,
          $Res Function(_$ProgressStateInactive) then) =
      __$$ProgressStateInactiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressStateInactiveCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressStateInactive>
    implements _$$ProgressStateInactiveCopyWith<$Res> {
  __$$ProgressStateInactiveCopyWithImpl(_$ProgressStateInactive _value,
      $Res Function(_$ProgressStateInactive) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgressStateInactive implements ProgressStateInactive {
  const _$ProgressStateInactive();

  @override
  String toString() {
    return 'ProgressState.inactive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgressStateInactive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function(
            Question currentQuestion, List<Question> remainingQuestions)
        active,
    required TResult Function() finished,
  }) {
    return inactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function(
            Question currentQuestion, List<Question> remainingQuestions)?
        active,
    TResult? Function()? finished,
  }) {
    return inactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(
            Question currentQuestion, List<Question> remainingQuestions)?
        active,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressStateInactive value) inactive,
    required TResult Function(ProgressStateActive value) active,
    required TResult Function(ProgressStateFinished value) finished,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressStateInactive value)? inactive,
    TResult? Function(ProgressStateActive value)? active,
    TResult? Function(ProgressStateFinished value)? finished,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressStateInactive value)? inactive,
    TResult Function(ProgressStateActive value)? active,
    TResult Function(ProgressStateFinished value)? finished,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class ProgressStateInactive implements ProgressState {
  const factory ProgressStateInactive() = _$ProgressStateInactive;
}

/// @nodoc
abstract class _$$ProgressStateActiveCopyWith<$Res> {
  factory _$$ProgressStateActiveCopyWith(_$ProgressStateActive value,
          $Res Function(_$ProgressStateActive) then) =
      __$$ProgressStateActiveCopyWithImpl<$Res>;
  @useResult
  $Res call({Question currentQuestion, List<Question> remainingQuestions});

  $QuestionCopyWith<$Res> get currentQuestion;
}

/// @nodoc
class __$$ProgressStateActiveCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressStateActive>
    implements _$$ProgressStateActiveCopyWith<$Res> {
  __$$ProgressStateActiveCopyWithImpl(
      _$ProgressStateActive _value, $Res Function(_$ProgressStateActive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentQuestion = null,
    Object? remainingQuestions = null,
  }) {
    return _then(_$ProgressStateActive(
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as Question,
      remainingQuestions: null == remainingQuestions
          ? _value._remainingQuestions
          : remainingQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get currentQuestion {
    return $QuestionCopyWith<$Res>(_value.currentQuestion, (value) {
      return _then(_value.copyWith(currentQuestion: value));
    });
  }
}

/// @nodoc

class _$ProgressStateActive implements ProgressStateActive {
  const _$ProgressStateActive(
      {required this.currentQuestion,
      required final List<Question> remainingQuestions})
      : _remainingQuestions = remainingQuestions;

  @override
  final Question currentQuestion;
  final List<Question> _remainingQuestions;
  @override
  List<Question> get remainingQuestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remainingQuestions);
  }

  @override
  String toString() {
    return 'ProgressState.active(currentQuestion: $currentQuestion, remainingQuestions: $remainingQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressStateActive &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            const DeepCollectionEquality()
                .equals(other._remainingQuestions, _remainingQuestions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentQuestion,
      const DeepCollectionEquality().hash(_remainingQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressStateActiveCopyWith<_$ProgressStateActive> get copyWith =>
      __$$ProgressStateActiveCopyWithImpl<_$ProgressStateActive>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function(
            Question currentQuestion, List<Question> remainingQuestions)
        active,
    required TResult Function() finished,
  }) {
    return active(currentQuestion, remainingQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function(
            Question currentQuestion, List<Question> remainingQuestions)?
        active,
    TResult? Function()? finished,
  }) {
    return active?.call(currentQuestion, remainingQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(
            Question currentQuestion, List<Question> remainingQuestions)?
        active,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(currentQuestion, remainingQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressStateInactive value) inactive,
    required TResult Function(ProgressStateActive value) active,
    required TResult Function(ProgressStateFinished value) finished,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressStateInactive value)? inactive,
    TResult? Function(ProgressStateActive value)? active,
    TResult? Function(ProgressStateFinished value)? finished,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressStateInactive value)? inactive,
    TResult Function(ProgressStateActive value)? active,
    TResult Function(ProgressStateFinished value)? finished,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class ProgressStateActive implements ProgressState {
  const factory ProgressStateActive(
          {required final Question currentQuestion,
          required final List<Question> remainingQuestions}) =
      _$ProgressStateActive;

  Question get currentQuestion;
  List<Question> get remainingQuestions;
  @JsonKey(ignore: true)
  _$$ProgressStateActiveCopyWith<_$ProgressStateActive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressStateFinishedCopyWith<$Res> {
  factory _$$ProgressStateFinishedCopyWith(_$ProgressStateFinished value,
          $Res Function(_$ProgressStateFinished) then) =
      __$$ProgressStateFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressStateFinishedCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressStateFinished>
    implements _$$ProgressStateFinishedCopyWith<$Res> {
  __$$ProgressStateFinishedCopyWithImpl(_$ProgressStateFinished _value,
      $Res Function(_$ProgressStateFinished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProgressStateFinished implements ProgressStateFinished {
  const _$ProgressStateFinished();

  @override
  String toString() {
    return 'ProgressState.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgressStateFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function(
            Question currentQuestion, List<Question> remainingQuestions)
        active,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function(
            Question currentQuestion, List<Question> remainingQuestions)?
        active,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(
            Question currentQuestion, List<Question> remainingQuestions)?
        active,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProgressStateInactive value) inactive,
    required TResult Function(ProgressStateActive value) active,
    required TResult Function(ProgressStateFinished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProgressStateInactive value)? inactive,
    TResult? Function(ProgressStateActive value)? active,
    TResult? Function(ProgressStateFinished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProgressStateInactive value)? inactive,
    TResult Function(ProgressStateActive value)? active,
    TResult Function(ProgressStateFinished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class ProgressStateFinished implements ProgressState {
  const factory ProgressStateFinished() = _$ProgressStateFinished;
}
