// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UrlEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, bool fromClipboard) validate,
    required TResult Function(String url) add,
    required TResult Function() change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, bool fromClipboard)? validate,
    TResult? Function(String url)? add,
    TResult? Function()? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, bool fromClipboard)? validate,
    TResult Function(String url)? add,
    TResult Function()? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlValidateEvent value) validate,
    required TResult Function(_UrlAddEvent value) add,
    required TResult Function(_UrlChangeEvent value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlValidateEvent value)? validate,
    TResult? Function(_UrlAddEvent value)? add,
    TResult? Function(_UrlChangeEvent value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlValidateEvent value)? validate,
    TResult Function(_UrlAddEvent value)? add,
    TResult Function(_UrlChangeEvent value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlEventCopyWith<$Res> {
  factory $UrlEventCopyWith(UrlEvent value, $Res Function(UrlEvent) then) =
      _$UrlEventCopyWithImpl<$Res, UrlEvent>;
}

/// @nodoc
class _$UrlEventCopyWithImpl<$Res, $Val extends UrlEvent>
    implements $UrlEventCopyWith<$Res> {
  _$UrlEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UrlValidateEventCopyWith<$Res> {
  factory _$$_UrlValidateEventCopyWith(
          _$_UrlValidateEvent value, $Res Function(_$_UrlValidateEvent) then) =
      __$$_UrlValidateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, bool fromClipboard});
}

/// @nodoc
class __$$_UrlValidateEventCopyWithImpl<$Res>
    extends _$UrlEventCopyWithImpl<$Res, _$_UrlValidateEvent>
    implements _$$_UrlValidateEventCopyWith<$Res> {
  __$$_UrlValidateEventCopyWithImpl(
      _$_UrlValidateEvent _value, $Res Function(_$_UrlValidateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? fromClipboard = null,
  }) {
    return _then(_$_UrlValidateEvent(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      null == fromClipboard
          ? _value.fromClipboard
          : fromClipboard // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UrlValidateEvent implements _UrlValidateEvent {
  const _$_UrlValidateEvent(this.url, this.fromClipboard);

  @override
  final String url;
  @override
  final bool fromClipboard;

  @override
  String toString() {
    return 'UrlEvent.validate(url: $url, fromClipboard: $fromClipboard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UrlValidateEvent &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.fromClipboard, fromClipboard) ||
                other.fromClipboard == fromClipboard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, fromClipboard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlValidateEventCopyWith<_$_UrlValidateEvent> get copyWith =>
      __$$_UrlValidateEventCopyWithImpl<_$_UrlValidateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, bool fromClipboard) validate,
    required TResult Function(String url) add,
    required TResult Function() change,
  }) {
    return validate(url, fromClipboard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, bool fromClipboard)? validate,
    TResult? Function(String url)? add,
    TResult? Function()? change,
  }) {
    return validate?.call(url, fromClipboard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, bool fromClipboard)? validate,
    TResult Function(String url)? add,
    TResult Function()? change,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(url, fromClipboard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlValidateEvent value) validate,
    required TResult Function(_UrlAddEvent value) add,
    required TResult Function(_UrlChangeEvent value) change,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlValidateEvent value)? validate,
    TResult? Function(_UrlAddEvent value)? add,
    TResult? Function(_UrlChangeEvent value)? change,
  }) {
    return validate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlValidateEvent value)? validate,
    TResult Function(_UrlAddEvent value)? add,
    TResult Function(_UrlChangeEvent value)? change,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class _UrlValidateEvent implements UrlEvent {
  const factory _UrlValidateEvent(final String url, final bool fromClipboard) =
      _$_UrlValidateEvent;

  String get url;
  bool get fromClipboard;
  @JsonKey(ignore: true)
  _$$_UrlValidateEventCopyWith<_$_UrlValidateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UrlAddEventCopyWith<$Res> {
  factory _$$_UrlAddEventCopyWith(
          _$_UrlAddEvent value, $Res Function(_$_UrlAddEvent) then) =
      __$$_UrlAddEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_UrlAddEventCopyWithImpl<$Res>
    extends _$UrlEventCopyWithImpl<$Res, _$_UrlAddEvent>
    implements _$$_UrlAddEventCopyWith<$Res> {
  __$$_UrlAddEventCopyWithImpl(
      _$_UrlAddEvent _value, $Res Function(_$_UrlAddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_UrlAddEvent(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UrlAddEvent implements _UrlAddEvent {
  const _$_UrlAddEvent(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'UrlEvent.add(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UrlAddEvent &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlAddEventCopyWith<_$_UrlAddEvent> get copyWith =>
      __$$_UrlAddEventCopyWithImpl<_$_UrlAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, bool fromClipboard) validate,
    required TResult Function(String url) add,
    required TResult Function() change,
  }) {
    return add(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, bool fromClipboard)? validate,
    TResult? Function(String url)? add,
    TResult? Function()? change,
  }) {
    return add?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, bool fromClipboard)? validate,
    TResult Function(String url)? add,
    TResult Function()? change,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlValidateEvent value) validate,
    required TResult Function(_UrlAddEvent value) add,
    required TResult Function(_UrlChangeEvent value) change,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlValidateEvent value)? validate,
    TResult? Function(_UrlAddEvent value)? add,
    TResult? Function(_UrlChangeEvent value)? change,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlValidateEvent value)? validate,
    TResult Function(_UrlAddEvent value)? add,
    TResult Function(_UrlChangeEvent value)? change,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _UrlAddEvent implements UrlEvent {
  const factory _UrlAddEvent(final String url) = _$_UrlAddEvent;

  String get url;
  @JsonKey(ignore: true)
  _$$_UrlAddEventCopyWith<_$_UrlAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UrlChangeEventCopyWith<$Res> {
  factory _$$_UrlChangeEventCopyWith(
          _$_UrlChangeEvent value, $Res Function(_$_UrlChangeEvent) then) =
      __$$_UrlChangeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UrlChangeEventCopyWithImpl<$Res>
    extends _$UrlEventCopyWithImpl<$Res, _$_UrlChangeEvent>
    implements _$$_UrlChangeEventCopyWith<$Res> {
  __$$_UrlChangeEventCopyWithImpl(
      _$_UrlChangeEvent _value, $Res Function(_$_UrlChangeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UrlChangeEvent implements _UrlChangeEvent {
  const _$_UrlChangeEvent();

  @override
  String toString() {
    return 'UrlEvent.change()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UrlChangeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, bool fromClipboard) validate,
    required TResult Function(String url) add,
    required TResult Function() change,
  }) {
    return change();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, bool fromClipboard)? validate,
    TResult? Function(String url)? add,
    TResult? Function()? change,
  }) {
    return change?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, bool fromClipboard)? validate,
    TResult Function(String url)? add,
    TResult Function()? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlValidateEvent value) validate,
    required TResult Function(_UrlAddEvent value) add,
    required TResult Function(_UrlChangeEvent value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlValidateEvent value)? validate,
    TResult? Function(_UrlAddEvent value)? add,
    TResult? Function(_UrlChangeEvent value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlValidateEvent value)? validate,
    TResult Function(_UrlAddEvent value)? add,
    TResult Function(_UrlChangeEvent value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _UrlChangeEvent implements UrlEvent {
  const factory _UrlChangeEvent() = _$_UrlChangeEvent;
}

/// @nodoc
mixin _$UrlState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() correct,
    required TResult Function(String url) validated,
    required TResult Function() incorrect,
    required TResult Function() successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? correct,
    TResult? Function(String url)? validated,
    TResult? Function()? incorrect,
    TResult? Function()? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? correct,
    TResult Function(String url)? validated,
    TResult Function()? incorrect,
    TResult Function()? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlCorrectState value) correct,
    required TResult Function(_UrlValidatedState value) validated,
    required TResult Function(_UrlIncorrectState value) incorrect,
    required TResult Function(_UrlSuccessfulState value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlCorrectState value)? correct,
    TResult? Function(_UrlValidatedState value)? validated,
    TResult? Function(_UrlIncorrectState value)? incorrect,
    TResult? Function(_UrlSuccessfulState value)? successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlCorrectState value)? correct,
    TResult Function(_UrlValidatedState value)? validated,
    TResult Function(_UrlIncorrectState value)? incorrect,
    TResult Function(_UrlSuccessfulState value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlStateCopyWith<$Res> {
  factory $UrlStateCopyWith(UrlState value, $Res Function(UrlState) then) =
      _$UrlStateCopyWithImpl<$Res, UrlState>;
}

/// @nodoc
class _$UrlStateCopyWithImpl<$Res, $Val extends UrlState>
    implements $UrlStateCopyWith<$Res> {
  _$UrlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UrlCorrectStateCopyWith<$Res> {
  factory _$$_UrlCorrectStateCopyWith(
          _$_UrlCorrectState value, $Res Function(_$_UrlCorrectState) then) =
      __$$_UrlCorrectStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UrlCorrectStateCopyWithImpl<$Res>
    extends _$UrlStateCopyWithImpl<$Res, _$_UrlCorrectState>
    implements _$$_UrlCorrectStateCopyWith<$Res> {
  __$$_UrlCorrectStateCopyWithImpl(
      _$_UrlCorrectState _value, $Res Function(_$_UrlCorrectState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UrlCorrectState extends _UrlCorrectState {
  const _$_UrlCorrectState() : super._();

  @override
  String toString() {
    return 'UrlState.correct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UrlCorrectState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() correct,
    required TResult Function(String url) validated,
    required TResult Function() incorrect,
    required TResult Function() successful,
  }) {
    return correct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? correct,
    TResult? Function(String url)? validated,
    TResult? Function()? incorrect,
    TResult? Function()? successful,
  }) {
    return correct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? correct,
    TResult Function(String url)? validated,
    TResult Function()? incorrect,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (correct != null) {
      return correct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlCorrectState value) correct,
    required TResult Function(_UrlValidatedState value) validated,
    required TResult Function(_UrlIncorrectState value) incorrect,
    required TResult Function(_UrlSuccessfulState value) successful,
  }) {
    return correct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlCorrectState value)? correct,
    TResult? Function(_UrlValidatedState value)? validated,
    TResult? Function(_UrlIncorrectState value)? incorrect,
    TResult? Function(_UrlSuccessfulState value)? successful,
  }) {
    return correct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlCorrectState value)? correct,
    TResult Function(_UrlValidatedState value)? validated,
    TResult Function(_UrlIncorrectState value)? incorrect,
    TResult Function(_UrlSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (correct != null) {
      return correct(this);
    }
    return orElse();
  }
}

abstract class _UrlCorrectState extends UrlState {
  const factory _UrlCorrectState() = _$_UrlCorrectState;
  const _UrlCorrectState._() : super._();
}

/// @nodoc
abstract class _$$_UrlValidatedStateCopyWith<$Res> {
  factory _$$_UrlValidatedStateCopyWith(_$_UrlValidatedState value,
          $Res Function(_$_UrlValidatedState) then) =
      __$$_UrlValidatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_UrlValidatedStateCopyWithImpl<$Res>
    extends _$UrlStateCopyWithImpl<$Res, _$_UrlValidatedState>
    implements _$$_UrlValidatedStateCopyWith<$Res> {
  __$$_UrlValidatedStateCopyWithImpl(
      _$_UrlValidatedState _value, $Res Function(_$_UrlValidatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_UrlValidatedState(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UrlValidatedState extends _UrlValidatedState {
  const _$_UrlValidatedState(this.url) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'UrlState.validated(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UrlValidatedState &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UrlValidatedStateCopyWith<_$_UrlValidatedState> get copyWith =>
      __$$_UrlValidatedStateCopyWithImpl<_$_UrlValidatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() correct,
    required TResult Function(String url) validated,
    required TResult Function() incorrect,
    required TResult Function() successful,
  }) {
    return validated(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? correct,
    TResult? Function(String url)? validated,
    TResult? Function()? incorrect,
    TResult? Function()? successful,
  }) {
    return validated?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? correct,
    TResult Function(String url)? validated,
    TResult Function()? incorrect,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlCorrectState value) correct,
    required TResult Function(_UrlValidatedState value) validated,
    required TResult Function(_UrlIncorrectState value) incorrect,
    required TResult Function(_UrlSuccessfulState value) successful,
  }) {
    return validated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlCorrectState value)? correct,
    TResult? Function(_UrlValidatedState value)? validated,
    TResult? Function(_UrlIncorrectState value)? incorrect,
    TResult? Function(_UrlSuccessfulState value)? successful,
  }) {
    return validated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlCorrectState value)? correct,
    TResult Function(_UrlValidatedState value)? validated,
    TResult Function(_UrlIncorrectState value)? incorrect,
    TResult Function(_UrlSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(this);
    }
    return orElse();
  }
}

abstract class _UrlValidatedState extends UrlState {
  const factory _UrlValidatedState(final String url) = _$_UrlValidatedState;
  const _UrlValidatedState._() : super._();

  String get url;
  @JsonKey(ignore: true)
  _$$_UrlValidatedStateCopyWith<_$_UrlValidatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UrlIncorrectStateCopyWith<$Res> {
  factory _$$_UrlIncorrectStateCopyWith(_$_UrlIncorrectState value,
          $Res Function(_$_UrlIncorrectState) then) =
      __$$_UrlIncorrectStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UrlIncorrectStateCopyWithImpl<$Res>
    extends _$UrlStateCopyWithImpl<$Res, _$_UrlIncorrectState>
    implements _$$_UrlIncorrectStateCopyWith<$Res> {
  __$$_UrlIncorrectStateCopyWithImpl(
      _$_UrlIncorrectState _value, $Res Function(_$_UrlIncorrectState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UrlIncorrectState extends _UrlIncorrectState {
  const _$_UrlIncorrectState() : super._();

  @override
  String toString() {
    return 'UrlState.incorrect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UrlIncorrectState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() correct,
    required TResult Function(String url) validated,
    required TResult Function() incorrect,
    required TResult Function() successful,
  }) {
    return incorrect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? correct,
    TResult? Function(String url)? validated,
    TResult? Function()? incorrect,
    TResult? Function()? successful,
  }) {
    return incorrect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? correct,
    TResult Function(String url)? validated,
    TResult Function()? incorrect,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (incorrect != null) {
      return incorrect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlCorrectState value) correct,
    required TResult Function(_UrlValidatedState value) validated,
    required TResult Function(_UrlIncorrectState value) incorrect,
    required TResult Function(_UrlSuccessfulState value) successful,
  }) {
    return incorrect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlCorrectState value)? correct,
    TResult? Function(_UrlValidatedState value)? validated,
    TResult? Function(_UrlIncorrectState value)? incorrect,
    TResult? Function(_UrlSuccessfulState value)? successful,
  }) {
    return incorrect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlCorrectState value)? correct,
    TResult Function(_UrlValidatedState value)? validated,
    TResult Function(_UrlIncorrectState value)? incorrect,
    TResult Function(_UrlSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (incorrect != null) {
      return incorrect(this);
    }
    return orElse();
  }
}

abstract class _UrlIncorrectState extends UrlState {
  const factory _UrlIncorrectState() = _$_UrlIncorrectState;
  const _UrlIncorrectState._() : super._();
}

/// @nodoc
abstract class _$$_UrlSuccessfulStateCopyWith<$Res> {
  factory _$$_UrlSuccessfulStateCopyWith(_$_UrlSuccessfulState value,
          $Res Function(_$_UrlSuccessfulState) then) =
      __$$_UrlSuccessfulStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UrlSuccessfulStateCopyWithImpl<$Res>
    extends _$UrlStateCopyWithImpl<$Res, _$_UrlSuccessfulState>
    implements _$$_UrlSuccessfulStateCopyWith<$Res> {
  __$$_UrlSuccessfulStateCopyWithImpl(
      _$_UrlSuccessfulState _value, $Res Function(_$_UrlSuccessfulState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UrlSuccessfulState extends _UrlSuccessfulState {
  const _$_UrlSuccessfulState() : super._();

  @override
  String toString() {
    return 'UrlState.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UrlSuccessfulState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() correct,
    required TResult Function(String url) validated,
    required TResult Function() incorrect,
    required TResult Function() successful,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? correct,
    TResult? Function(String url)? validated,
    TResult? Function()? incorrect,
    TResult? Function()? successful,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? correct,
    TResult Function(String url)? validated,
    TResult Function()? incorrect,
    TResult Function()? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UrlCorrectState value) correct,
    required TResult Function(_UrlValidatedState value) validated,
    required TResult Function(_UrlIncorrectState value) incorrect,
    required TResult Function(_UrlSuccessfulState value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UrlCorrectState value)? correct,
    TResult? Function(_UrlValidatedState value)? validated,
    TResult? Function(_UrlIncorrectState value)? incorrect,
    TResult? Function(_UrlSuccessfulState value)? successful,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UrlCorrectState value)? correct,
    TResult Function(_UrlValidatedState value)? validated,
    TResult Function(_UrlIncorrectState value)? incorrect,
    TResult Function(_UrlSuccessfulState value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _UrlSuccessfulState extends UrlState {
  const factory _UrlSuccessfulState() = _$_UrlSuccessfulState;
  const _UrlSuccessfulState._() : super._();
}
