// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) attach,
    required TResult Function() load,
    required TResult Function(double current, double max) progressChanged,
    required TResult Function() pause,
    required TResult Function() resume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? attach,
    TResult? Function()? load,
    TResult? Function(double current, double max)? progressChanged,
    TResult? Function()? pause,
    TResult? Function()? resume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? attach,
    TResult Function()? load,
    TResult Function(double current, double max)? progressChanged,
    TResult Function()? pause,
    TResult Function()? resume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketAttachEvent value) attach,
    required TResult Function(_TicketLoadEvent value) load,
    required TResult Function(_TicketProgressChangedEvent value)
        progressChanged,
    required TResult Function(_TicketPauseEvent value) pause,
    required TResult Function(_TicketResumeEvent value) resume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketAttachEvent value)? attach,
    TResult? Function(_TicketLoadEvent value)? load,
    TResult? Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult? Function(_TicketPauseEvent value)? pause,
    TResult? Function(_TicketResumeEvent value)? resume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketAttachEvent value)? attach,
    TResult Function(_TicketLoadEvent value)? load,
    TResult Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult Function(_TicketPauseEvent value)? pause,
    TResult Function(_TicketResumeEvent value)? resume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEventCopyWith<$Res> {
  factory $TicketEventCopyWith(
          TicketEvent value, $Res Function(TicketEvent) then) =
      _$TicketEventCopyWithImpl<$Res, TicketEvent>;
}

/// @nodoc
class _$TicketEventCopyWithImpl<$Res, $Val extends TicketEvent>
    implements $TicketEventCopyWith<$Res> {
  _$TicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TicketAttachEventCopyWith<$Res> {
  factory _$$_TicketAttachEventCopyWith(_$_TicketAttachEvent value,
          $Res Function(_$_TicketAttachEvent) then) =
      __$$_TicketAttachEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$_TicketAttachEventCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_TicketAttachEvent>
    implements _$$_TicketAttachEventCopyWith<$Res> {
  __$$_TicketAttachEventCopyWithImpl(
      _$_TicketAttachEvent _value, $Res Function(_$_TicketAttachEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_TicketAttachEvent(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$_TicketAttachEvent implements _TicketAttachEvent {
  const _$_TicketAttachEvent(this.ticket);

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'TicketEvent.attach(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketAttachEvent &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketAttachEventCopyWith<_$_TicketAttachEvent> get copyWith =>
      __$$_TicketAttachEventCopyWithImpl<_$_TicketAttachEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) attach,
    required TResult Function() load,
    required TResult Function(double current, double max) progressChanged,
    required TResult Function() pause,
    required TResult Function() resume,
  }) {
    return attach(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? attach,
    TResult? Function()? load,
    TResult? Function(double current, double max)? progressChanged,
    TResult? Function()? pause,
    TResult? Function()? resume,
  }) {
    return attach?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? attach,
    TResult Function()? load,
    TResult Function(double current, double max)? progressChanged,
    TResult Function()? pause,
    TResult Function()? resume,
    required TResult orElse(),
  }) {
    if (attach != null) {
      return attach(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketAttachEvent value) attach,
    required TResult Function(_TicketLoadEvent value) load,
    required TResult Function(_TicketProgressChangedEvent value)
        progressChanged,
    required TResult Function(_TicketPauseEvent value) pause,
    required TResult Function(_TicketResumeEvent value) resume,
  }) {
    return attach(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketAttachEvent value)? attach,
    TResult? Function(_TicketLoadEvent value)? load,
    TResult? Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult? Function(_TicketPauseEvent value)? pause,
    TResult? Function(_TicketResumeEvent value)? resume,
  }) {
    return attach?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketAttachEvent value)? attach,
    TResult Function(_TicketLoadEvent value)? load,
    TResult Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult Function(_TicketPauseEvent value)? pause,
    TResult Function(_TicketResumeEvent value)? resume,
    required TResult orElse(),
  }) {
    if (attach != null) {
      return attach(this);
    }
    return orElse();
  }
}

abstract class _TicketAttachEvent implements TicketEvent {
  const factory _TicketAttachEvent(final Ticket ticket) = _$_TicketAttachEvent;

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_TicketAttachEventCopyWith<_$_TicketAttachEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TicketLoadEventCopyWith<$Res> {
  factory _$$_TicketLoadEventCopyWith(
          _$_TicketLoadEvent value, $Res Function(_$_TicketLoadEvent) then) =
      __$$_TicketLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TicketLoadEventCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_TicketLoadEvent>
    implements _$$_TicketLoadEventCopyWith<$Res> {
  __$$_TicketLoadEventCopyWithImpl(
      _$_TicketLoadEvent _value, $Res Function(_$_TicketLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TicketLoadEvent implements _TicketLoadEvent {
  const _$_TicketLoadEvent();

  @override
  String toString() {
    return 'TicketEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TicketLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) attach,
    required TResult Function() load,
    required TResult Function(double current, double max) progressChanged,
    required TResult Function() pause,
    required TResult Function() resume,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? attach,
    TResult? Function()? load,
    TResult? Function(double current, double max)? progressChanged,
    TResult? Function()? pause,
    TResult? Function()? resume,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? attach,
    TResult Function()? load,
    TResult Function(double current, double max)? progressChanged,
    TResult Function()? pause,
    TResult Function()? resume,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketAttachEvent value) attach,
    required TResult Function(_TicketLoadEvent value) load,
    required TResult Function(_TicketProgressChangedEvent value)
        progressChanged,
    required TResult Function(_TicketPauseEvent value) pause,
    required TResult Function(_TicketResumeEvent value) resume,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketAttachEvent value)? attach,
    TResult? Function(_TicketLoadEvent value)? load,
    TResult? Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult? Function(_TicketPauseEvent value)? pause,
    TResult? Function(_TicketResumeEvent value)? resume,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketAttachEvent value)? attach,
    TResult Function(_TicketLoadEvent value)? load,
    TResult Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult Function(_TicketPauseEvent value)? pause,
    TResult Function(_TicketResumeEvent value)? resume,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _TicketLoadEvent implements TicketEvent {
  const factory _TicketLoadEvent() = _$_TicketLoadEvent;
}

/// @nodoc
abstract class _$$_TicketProgressChangedEventCopyWith<$Res> {
  factory _$$_TicketProgressChangedEventCopyWith(
          _$_TicketProgressChangedEvent value,
          $Res Function(_$_TicketProgressChangedEvent) then) =
      __$$_TicketProgressChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({double current, double max});
}

/// @nodoc
class __$$_TicketProgressChangedEventCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_TicketProgressChangedEvent>
    implements _$$_TicketProgressChangedEventCopyWith<$Res> {
  __$$_TicketProgressChangedEventCopyWithImpl(
      _$_TicketProgressChangedEvent _value,
      $Res Function(_$_TicketProgressChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? max = null,
  }) {
    return _then(_$_TicketProgressChangedEvent(
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_TicketProgressChangedEvent implements _TicketProgressChangedEvent {
  const _$_TicketProgressChangedEvent(this.current, this.max);

  @override
  final double current;
  @override
  final double max;

  @override
  String toString() {
    return 'TicketEvent.progressChanged(current: $current, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketProgressChangedEvent &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketProgressChangedEventCopyWith<_$_TicketProgressChangedEvent>
      get copyWith => __$$_TicketProgressChangedEventCopyWithImpl<
          _$_TicketProgressChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) attach,
    required TResult Function() load,
    required TResult Function(double current, double max) progressChanged,
    required TResult Function() pause,
    required TResult Function() resume,
  }) {
    return progressChanged(current, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? attach,
    TResult? Function()? load,
    TResult? Function(double current, double max)? progressChanged,
    TResult? Function()? pause,
    TResult? Function()? resume,
  }) {
    return progressChanged?.call(current, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? attach,
    TResult Function()? load,
    TResult Function(double current, double max)? progressChanged,
    TResult Function()? pause,
    TResult Function()? resume,
    required TResult orElse(),
  }) {
    if (progressChanged != null) {
      return progressChanged(current, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketAttachEvent value) attach,
    required TResult Function(_TicketLoadEvent value) load,
    required TResult Function(_TicketProgressChangedEvent value)
        progressChanged,
    required TResult Function(_TicketPauseEvent value) pause,
    required TResult Function(_TicketResumeEvent value) resume,
  }) {
    return progressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketAttachEvent value)? attach,
    TResult? Function(_TicketLoadEvent value)? load,
    TResult? Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult? Function(_TicketPauseEvent value)? pause,
    TResult? Function(_TicketResumeEvent value)? resume,
  }) {
    return progressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketAttachEvent value)? attach,
    TResult Function(_TicketLoadEvent value)? load,
    TResult Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult Function(_TicketPauseEvent value)? pause,
    TResult Function(_TicketResumeEvent value)? resume,
    required TResult orElse(),
  }) {
    if (progressChanged != null) {
      return progressChanged(this);
    }
    return orElse();
  }
}

abstract class _TicketProgressChangedEvent implements TicketEvent {
  const factory _TicketProgressChangedEvent(
      final double current, final double max) = _$_TicketProgressChangedEvent;

  double get current;
  double get max;
  @JsonKey(ignore: true)
  _$$_TicketProgressChangedEventCopyWith<_$_TicketProgressChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TicketPauseEventCopyWith<$Res> {
  factory _$$_TicketPauseEventCopyWith(
          _$_TicketPauseEvent value, $Res Function(_$_TicketPauseEvent) then) =
      __$$_TicketPauseEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TicketPauseEventCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_TicketPauseEvent>
    implements _$$_TicketPauseEventCopyWith<$Res> {
  __$$_TicketPauseEventCopyWithImpl(
      _$_TicketPauseEvent _value, $Res Function(_$_TicketPauseEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TicketPauseEvent implements _TicketPauseEvent {
  const _$_TicketPauseEvent();

  @override
  String toString() {
    return 'TicketEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TicketPauseEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) attach,
    required TResult Function() load,
    required TResult Function(double current, double max) progressChanged,
    required TResult Function() pause,
    required TResult Function() resume,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? attach,
    TResult? Function()? load,
    TResult? Function(double current, double max)? progressChanged,
    TResult? Function()? pause,
    TResult? Function()? resume,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? attach,
    TResult Function()? load,
    TResult Function(double current, double max)? progressChanged,
    TResult Function()? pause,
    TResult Function()? resume,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketAttachEvent value) attach,
    required TResult Function(_TicketLoadEvent value) load,
    required TResult Function(_TicketProgressChangedEvent value)
        progressChanged,
    required TResult Function(_TicketPauseEvent value) pause,
    required TResult Function(_TicketResumeEvent value) resume,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketAttachEvent value)? attach,
    TResult? Function(_TicketLoadEvent value)? load,
    TResult? Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult? Function(_TicketPauseEvent value)? pause,
    TResult? Function(_TicketResumeEvent value)? resume,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketAttachEvent value)? attach,
    TResult Function(_TicketLoadEvent value)? load,
    TResult Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult Function(_TicketPauseEvent value)? pause,
    TResult Function(_TicketResumeEvent value)? resume,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _TicketPauseEvent implements TicketEvent {
  const factory _TicketPauseEvent() = _$_TicketPauseEvent;
}

/// @nodoc
abstract class _$$_TicketResumeEventCopyWith<$Res> {
  factory _$$_TicketResumeEventCopyWith(_$_TicketResumeEvent value,
          $Res Function(_$_TicketResumeEvent) then) =
      __$$_TicketResumeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TicketResumeEventCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$_TicketResumeEvent>
    implements _$$_TicketResumeEventCopyWith<$Res> {
  __$$_TicketResumeEventCopyWithImpl(
      _$_TicketResumeEvent _value, $Res Function(_$_TicketResumeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TicketResumeEvent implements _TicketResumeEvent {
  const _$_TicketResumeEvent();

  @override
  String toString() {
    return 'TicketEvent.resume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TicketResumeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) attach,
    required TResult Function() load,
    required TResult Function(double current, double max) progressChanged,
    required TResult Function() pause,
    required TResult Function() resume,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? attach,
    TResult? Function()? load,
    TResult? Function(double current, double max)? progressChanged,
    TResult? Function()? pause,
    TResult? Function()? resume,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? attach,
    TResult Function()? load,
    TResult Function(double current, double max)? progressChanged,
    TResult Function()? pause,
    TResult Function()? resume,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketAttachEvent value) attach,
    required TResult Function(_TicketLoadEvent value) load,
    required TResult Function(_TicketProgressChangedEvent value)
        progressChanged,
    required TResult Function(_TicketPauseEvent value) pause,
    required TResult Function(_TicketResumeEvent value) resume,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketAttachEvent value)? attach,
    TResult? Function(_TicketLoadEvent value)? load,
    TResult? Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult? Function(_TicketPauseEvent value)? pause,
    TResult? Function(_TicketResumeEvent value)? resume,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketAttachEvent value)? attach,
    TResult Function(_TicketLoadEvent value)? load,
    TResult Function(_TicketProgressChangedEvent value)? progressChanged,
    TResult Function(_TicketPauseEvent value)? pause,
    TResult Function(_TicketResumeEvent value)? resume,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class _TicketResumeEvent implements TicketEvent {
  const factory _TicketResumeEvent() = _$_TicketResumeEvent;
}

/// @nodoc
mixin _$TicketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) waiting,
    required TResult Function() initial,
    required TResult Function(Ticket ticket, double current, double size)
        loading,
    required TResult Function(Ticket ticket) loaded,
    required TResult Function(Ticket ticket) paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? waiting,
    TResult? Function()? initial,
    TResult? Function(Ticket ticket, double current, double size)? loading,
    TResult? Function(Ticket ticket)? loaded,
    TResult? Function(Ticket ticket)? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? waiting,
    TResult Function()? initial,
    TResult Function(Ticket ticket, double current, double size)? loading,
    TResult Function(Ticket ticket)? loaded,
    TResult Function(Ticket ticket)? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketWaitingState value) waiting,
    required TResult Function(_TicketInitialState value) initial,
    required TResult Function(_TicketLoadingState value) loading,
    required TResult Function(_TicketLoadedState value) loaded,
    required TResult Function(_TicketPausedState value) paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketWaitingState value)? waiting,
    TResult? Function(_TicketInitialState value)? initial,
    TResult? Function(_TicketLoadingState value)? loading,
    TResult? Function(_TicketLoadedState value)? loaded,
    TResult? Function(_TicketPausedState value)? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketWaitingState value)? waiting,
    TResult Function(_TicketInitialState value)? initial,
    TResult Function(_TicketLoadingState value)? loading,
    TResult Function(_TicketLoadedState value)? loaded,
    TResult Function(_TicketPausedState value)? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStateCopyWith<$Res> {
  factory $TicketStateCopyWith(
          TicketState value, $Res Function(TicketState) then) =
      _$TicketStateCopyWithImpl<$Res, TicketState>;
}

/// @nodoc
class _$TicketStateCopyWithImpl<$Res, $Val extends TicketState>
    implements $TicketStateCopyWith<$Res> {
  _$TicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TicketWaitingStateCopyWith<$Res> {
  factory _$$_TicketWaitingStateCopyWith(_$_TicketWaitingState value,
          $Res Function(_$_TicketWaitingState) then) =
      __$$_TicketWaitingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$_TicketWaitingStateCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_TicketWaitingState>
    implements _$$_TicketWaitingStateCopyWith<$Res> {
  __$$_TicketWaitingStateCopyWithImpl(
      _$_TicketWaitingState _value, $Res Function(_$_TicketWaitingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_TicketWaitingState(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$_TicketWaitingState extends _TicketWaitingState {
  const _$_TicketWaitingState(this.ticket) : super._();

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'TicketState.waiting(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketWaitingState &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketWaitingStateCopyWith<_$_TicketWaitingState> get copyWith =>
      __$$_TicketWaitingStateCopyWithImpl<_$_TicketWaitingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) waiting,
    required TResult Function() initial,
    required TResult Function(Ticket ticket, double current, double size)
        loading,
    required TResult Function(Ticket ticket) loaded,
    required TResult Function(Ticket ticket) paused,
  }) {
    return waiting(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? waiting,
    TResult? Function()? initial,
    TResult? Function(Ticket ticket, double current, double size)? loading,
    TResult? Function(Ticket ticket)? loaded,
    TResult? Function(Ticket ticket)? paused,
  }) {
    return waiting?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? waiting,
    TResult Function()? initial,
    TResult Function(Ticket ticket, double current, double size)? loading,
    TResult Function(Ticket ticket)? loaded,
    TResult Function(Ticket ticket)? paused,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketWaitingState value) waiting,
    required TResult Function(_TicketInitialState value) initial,
    required TResult Function(_TicketLoadingState value) loading,
    required TResult Function(_TicketLoadedState value) loaded,
    required TResult Function(_TicketPausedState value) paused,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketWaitingState value)? waiting,
    TResult? Function(_TicketInitialState value)? initial,
    TResult? Function(_TicketLoadingState value)? loading,
    TResult? Function(_TicketLoadedState value)? loaded,
    TResult? Function(_TicketPausedState value)? paused,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketWaitingState value)? waiting,
    TResult Function(_TicketInitialState value)? initial,
    TResult Function(_TicketLoadingState value)? loading,
    TResult Function(_TicketLoadedState value)? loaded,
    TResult Function(_TicketPausedState value)? paused,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _TicketWaitingState extends TicketState {
  const factory _TicketWaitingState(final Ticket ticket) =
      _$_TicketWaitingState;
  const _TicketWaitingState._() : super._();

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_TicketWaitingStateCopyWith<_$_TicketWaitingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TicketInitialStateCopyWith<$Res> {
  factory _$$_TicketInitialStateCopyWith(_$_TicketInitialState value,
          $Res Function(_$_TicketInitialState) then) =
      __$$_TicketInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TicketInitialStateCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_TicketInitialState>
    implements _$$_TicketInitialStateCopyWith<$Res> {
  __$$_TicketInitialStateCopyWithImpl(
      _$_TicketInitialState _value, $Res Function(_$_TicketInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TicketInitialState extends _TicketInitialState {
  const _$_TicketInitialState() : super._();

  @override
  String toString() {
    return 'TicketState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TicketInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) waiting,
    required TResult Function() initial,
    required TResult Function(Ticket ticket, double current, double size)
        loading,
    required TResult Function(Ticket ticket) loaded,
    required TResult Function(Ticket ticket) paused,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? waiting,
    TResult? Function()? initial,
    TResult? Function(Ticket ticket, double current, double size)? loading,
    TResult? Function(Ticket ticket)? loaded,
    TResult? Function(Ticket ticket)? paused,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? waiting,
    TResult Function()? initial,
    TResult Function(Ticket ticket, double current, double size)? loading,
    TResult Function(Ticket ticket)? loaded,
    TResult Function(Ticket ticket)? paused,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketWaitingState value) waiting,
    required TResult Function(_TicketInitialState value) initial,
    required TResult Function(_TicketLoadingState value) loading,
    required TResult Function(_TicketLoadedState value) loaded,
    required TResult Function(_TicketPausedState value) paused,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketWaitingState value)? waiting,
    TResult? Function(_TicketInitialState value)? initial,
    TResult? Function(_TicketLoadingState value)? loading,
    TResult? Function(_TicketLoadedState value)? loaded,
    TResult? Function(_TicketPausedState value)? paused,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketWaitingState value)? waiting,
    TResult Function(_TicketInitialState value)? initial,
    TResult Function(_TicketLoadingState value)? loading,
    TResult Function(_TicketLoadedState value)? loaded,
    TResult Function(_TicketPausedState value)? paused,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TicketInitialState extends TicketState {
  const factory _TicketInitialState() = _$_TicketInitialState;
  const _TicketInitialState._() : super._();
}

/// @nodoc
abstract class _$$_TicketLoadingStateCopyWith<$Res> {
  factory _$$_TicketLoadingStateCopyWith(_$_TicketLoadingState value,
          $Res Function(_$_TicketLoadingState) then) =
      __$$_TicketLoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket, double current, double size});
}

/// @nodoc
class __$$_TicketLoadingStateCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_TicketLoadingState>
    implements _$$_TicketLoadingStateCopyWith<$Res> {
  __$$_TicketLoadingStateCopyWithImpl(
      _$_TicketLoadingState _value, $Res Function(_$_TicketLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? current = null,
    Object? size = null,
  }) {
    return _then(_$_TicketLoadingState(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_TicketLoadingState extends _TicketLoadingState {
  const _$_TicketLoadingState(this.ticket, this.current, this.size) : super._();

  @override
  final Ticket ticket;
  @override
  final double current;
  @override
  final double size;

  @override
  String toString() {
    return 'TicketState.loading(ticket: $ticket, current: $current, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketLoadingState &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket, current, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketLoadingStateCopyWith<_$_TicketLoadingState> get copyWith =>
      __$$_TicketLoadingStateCopyWithImpl<_$_TicketLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) waiting,
    required TResult Function() initial,
    required TResult Function(Ticket ticket, double current, double size)
        loading,
    required TResult Function(Ticket ticket) loaded,
    required TResult Function(Ticket ticket) paused,
  }) {
    return loading(ticket, current, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? waiting,
    TResult? Function()? initial,
    TResult? Function(Ticket ticket, double current, double size)? loading,
    TResult? Function(Ticket ticket)? loaded,
    TResult? Function(Ticket ticket)? paused,
  }) {
    return loading?.call(ticket, current, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? waiting,
    TResult Function()? initial,
    TResult Function(Ticket ticket, double current, double size)? loading,
    TResult Function(Ticket ticket)? loaded,
    TResult Function(Ticket ticket)? paused,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(ticket, current, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketWaitingState value) waiting,
    required TResult Function(_TicketInitialState value) initial,
    required TResult Function(_TicketLoadingState value) loading,
    required TResult Function(_TicketLoadedState value) loaded,
    required TResult Function(_TicketPausedState value) paused,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketWaitingState value)? waiting,
    TResult? Function(_TicketInitialState value)? initial,
    TResult? Function(_TicketLoadingState value)? loading,
    TResult? Function(_TicketLoadedState value)? loaded,
    TResult? Function(_TicketPausedState value)? paused,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketWaitingState value)? waiting,
    TResult Function(_TicketInitialState value)? initial,
    TResult Function(_TicketLoadingState value)? loading,
    TResult Function(_TicketLoadedState value)? loaded,
    TResult Function(_TicketPausedState value)? paused,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TicketLoadingState extends TicketState {
  const factory _TicketLoadingState(
          final Ticket ticket, final double current, final double size) =
      _$_TicketLoadingState;
  const _TicketLoadingState._() : super._();

  Ticket get ticket;
  double get current;
  double get size;
  @JsonKey(ignore: true)
  _$$_TicketLoadingStateCopyWith<_$_TicketLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TicketLoadedStateCopyWith<$Res> {
  factory _$$_TicketLoadedStateCopyWith(_$_TicketLoadedState value,
          $Res Function(_$_TicketLoadedState) then) =
      __$$_TicketLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$_TicketLoadedStateCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_TicketLoadedState>
    implements _$$_TicketLoadedStateCopyWith<$Res> {
  __$$_TicketLoadedStateCopyWithImpl(
      _$_TicketLoadedState _value, $Res Function(_$_TicketLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_TicketLoadedState(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$_TicketLoadedState extends _TicketLoadedState {
  const _$_TicketLoadedState(this.ticket) : super._();

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'TicketState.loaded(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketLoadedState &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketLoadedStateCopyWith<_$_TicketLoadedState> get copyWith =>
      __$$_TicketLoadedStateCopyWithImpl<_$_TicketLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) waiting,
    required TResult Function() initial,
    required TResult Function(Ticket ticket, double current, double size)
        loading,
    required TResult Function(Ticket ticket) loaded,
    required TResult Function(Ticket ticket) paused,
  }) {
    return loaded(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? waiting,
    TResult? Function()? initial,
    TResult? Function(Ticket ticket, double current, double size)? loading,
    TResult? Function(Ticket ticket)? loaded,
    TResult? Function(Ticket ticket)? paused,
  }) {
    return loaded?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? waiting,
    TResult Function()? initial,
    TResult Function(Ticket ticket, double current, double size)? loading,
    TResult Function(Ticket ticket)? loaded,
    TResult Function(Ticket ticket)? paused,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketWaitingState value) waiting,
    required TResult Function(_TicketInitialState value) initial,
    required TResult Function(_TicketLoadingState value) loading,
    required TResult Function(_TicketLoadedState value) loaded,
    required TResult Function(_TicketPausedState value) paused,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketWaitingState value)? waiting,
    TResult? Function(_TicketInitialState value)? initial,
    TResult? Function(_TicketLoadingState value)? loading,
    TResult? Function(_TicketLoadedState value)? loaded,
    TResult? Function(_TicketPausedState value)? paused,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketWaitingState value)? waiting,
    TResult Function(_TicketInitialState value)? initial,
    TResult Function(_TicketLoadingState value)? loading,
    TResult Function(_TicketLoadedState value)? loaded,
    TResult Function(_TicketPausedState value)? paused,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TicketLoadedState extends TicketState {
  const factory _TicketLoadedState(final Ticket ticket) = _$_TicketLoadedState;
  const _TicketLoadedState._() : super._();

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_TicketLoadedStateCopyWith<_$_TicketLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TicketPausedStateCopyWith<$Res> {
  factory _$$_TicketPausedStateCopyWith(_$_TicketPausedState value,
          $Res Function(_$_TicketPausedState) then) =
      __$$_TicketPausedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$_TicketPausedStateCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$_TicketPausedState>
    implements _$$_TicketPausedStateCopyWith<$Res> {
  __$$_TicketPausedStateCopyWithImpl(
      _$_TicketPausedState _value, $Res Function(_$_TicketPausedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_TicketPausedState(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$_TicketPausedState extends _TicketPausedState {
  const _$_TicketPausedState(this.ticket) : super._();

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'TicketState.paused(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketPausedState &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketPausedStateCopyWith<_$_TicketPausedState> get copyWith =>
      __$$_TicketPausedStateCopyWithImpl<_$_TicketPausedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) waiting,
    required TResult Function() initial,
    required TResult Function(Ticket ticket, double current, double size)
        loading,
    required TResult Function(Ticket ticket) loaded,
    required TResult Function(Ticket ticket) paused,
  }) {
    return paused(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? waiting,
    TResult? Function()? initial,
    TResult? Function(Ticket ticket, double current, double size)? loading,
    TResult? Function(Ticket ticket)? loaded,
    TResult? Function(Ticket ticket)? paused,
  }) {
    return paused?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? waiting,
    TResult Function()? initial,
    TResult Function(Ticket ticket, double current, double size)? loading,
    TResult Function(Ticket ticket)? loaded,
    TResult Function(Ticket ticket)? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketWaitingState value) waiting,
    required TResult Function(_TicketInitialState value) initial,
    required TResult Function(_TicketLoadingState value) loading,
    required TResult Function(_TicketLoadedState value) loaded,
    required TResult Function(_TicketPausedState value) paused,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketWaitingState value)? waiting,
    TResult? Function(_TicketInitialState value)? initial,
    TResult? Function(_TicketLoadingState value)? loading,
    TResult? Function(_TicketLoadedState value)? loaded,
    TResult? Function(_TicketPausedState value)? paused,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketWaitingState value)? waiting,
    TResult Function(_TicketInitialState value)? initial,
    TResult Function(_TicketLoadingState value)? loading,
    TResult Function(_TicketLoadedState value)? loaded,
    TResult Function(_TicketPausedState value)? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _TicketPausedState extends TicketState {
  const factory _TicketPausedState(final Ticket ticket) = _$_TicketPausedState;
  const _TicketPausedState._() : super._();

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_TicketPausedStateCopyWith<_$_TicketPausedState> get copyWith =>
      throw _privateConstructorUsedError;
}
