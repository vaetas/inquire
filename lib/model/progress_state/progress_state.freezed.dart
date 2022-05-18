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
    required TResult Function(int currentQuestion, List<int> finishedQuestions)
        active,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(int currentQuestion, List<int> finishedQuestions)? active,
    TResult Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(int currentQuestion, List<int> finishedQuestions)? active,
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
    TResult Function(ProgressStateInactive value)? inactive,
    TResult Function(ProgressStateActive value)? active,
    TResult Function(ProgressStateFinished value)? finished,
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
      _$ProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  final ProgressState _value;
  // ignore: unused_field
  final $Res Function(ProgressState) _then;
}

/// @nodoc
abstract class _$$ProgressStateInactiveCopyWith<$Res> {
  factory _$$ProgressStateInactiveCopyWith(_$ProgressStateInactive value,
          $Res Function(_$ProgressStateInactive) then) =
      __$$ProgressStateInactiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressStateInactiveCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res>
    implements _$$ProgressStateInactiveCopyWith<$Res> {
  __$$ProgressStateInactiveCopyWithImpl(_$ProgressStateInactive _value,
      $Res Function(_$ProgressStateInactive) _then)
      : super(_value, (v) => _then(v as _$ProgressStateInactive));

  @override
  _$ProgressStateInactive get _value => super._value as _$ProgressStateInactive;
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
    required TResult Function(int currentQuestion, List<int> finishedQuestions)
        active,
    required TResult Function() finished,
  }) {
    return inactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(int currentQuestion, List<int> finishedQuestions)? active,
    TResult Function()? finished,
  }) {
    return inactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(int currentQuestion, List<int> finishedQuestions)? active,
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
    TResult Function(ProgressStateInactive value)? inactive,
    TResult Function(ProgressStateActive value)? active,
    TResult Function(ProgressStateFinished value)? finished,
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
  $Res call({int currentQuestion, List<int> finishedQuestions});
}

/// @nodoc
class __$$ProgressStateActiveCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res>
    implements _$$ProgressStateActiveCopyWith<$Res> {
  __$$ProgressStateActiveCopyWithImpl(
      _$ProgressStateActive _value, $Res Function(_$ProgressStateActive) _then)
      : super(_value, (v) => _then(v as _$ProgressStateActive));

  @override
  _$ProgressStateActive get _value => super._value as _$ProgressStateActive;

  @override
  $Res call({
    Object? currentQuestion = freezed,
    Object? finishedQuestions = freezed,
  }) {
    return _then(_$ProgressStateActive(
      currentQuestion: currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
      finishedQuestions: finishedQuestions == freezed
          ? _value._finishedQuestions
          : finishedQuestions // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ProgressStateActive implements ProgressStateActive {
  const _$ProgressStateActive(
      {required this.currentQuestion,
      required final List<int> finishedQuestions})
      : _finishedQuestions = finishedQuestions;

  @override
  final int currentQuestion;
  final List<int> _finishedQuestions;
  @override
  List<int> get finishedQuestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_finishedQuestions);
  }

  @override
  String toString() {
    return 'ProgressState.active(currentQuestion: $currentQuestion, finishedQuestions: $finishedQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressStateActive &&
            const DeepCollectionEquality()
                .equals(other.currentQuestion, currentQuestion) &&
            const DeepCollectionEquality()
                .equals(other._finishedQuestions, _finishedQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentQuestion),
      const DeepCollectionEquality().hash(_finishedQuestions));

  @JsonKey(ignore: true)
  @override
  _$$ProgressStateActiveCopyWith<_$ProgressStateActive> get copyWith =>
      __$$ProgressStateActiveCopyWithImpl<_$ProgressStateActive>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function(int currentQuestion, List<int> finishedQuestions)
        active,
    required TResult Function() finished,
  }) {
    return active(currentQuestion, finishedQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(int currentQuestion, List<int> finishedQuestions)? active,
    TResult Function()? finished,
  }) {
    return active?.call(currentQuestion, finishedQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(int currentQuestion, List<int> finishedQuestions)? active,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(currentQuestion, finishedQuestions);
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
    TResult Function(ProgressStateInactive value)? inactive,
    TResult Function(ProgressStateActive value)? active,
    TResult Function(ProgressStateFinished value)? finished,
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
      {required final int currentQuestion,
      required final List<int> finishedQuestions}) = _$ProgressStateActive;

  int get currentQuestion => throw _privateConstructorUsedError;
  List<int> get finishedQuestions => throw _privateConstructorUsedError;
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
    extends _$ProgressStateCopyWithImpl<$Res>
    implements _$$ProgressStateFinishedCopyWith<$Res> {
  __$$ProgressStateFinishedCopyWithImpl(_$ProgressStateFinished _value,
      $Res Function(_$ProgressStateFinished) _then)
      : super(_value, (v) => _then(v as _$ProgressStateFinished));

  @override
  _$ProgressStateFinished get _value => super._value as _$ProgressStateFinished;
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
    required TResult Function(int currentQuestion, List<int> finishedQuestions)
        active,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(int currentQuestion, List<int> finishedQuestions)? active,
    TResult Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function(int currentQuestion, List<int> finishedQuestions)? active,
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
    TResult Function(ProgressStateInactive value)? inactive,
    TResult Function(ProgressStateActive value)? active,
    TResult Function(ProgressStateFinished value)? finished,
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
