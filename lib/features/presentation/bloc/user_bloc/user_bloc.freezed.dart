// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInfoUserEvent value) getInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInfoUserEvent value)? getInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInfoUserEvent value)? getInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetInfoUserEventImplCopyWith<$Res> {
  factory _$$GetInfoUserEventImplCopyWith(_$GetInfoUserEventImpl value,
          $Res Function(_$GetInfoUserEventImpl) then) =
      __$$GetInfoUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInfoUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetInfoUserEventImpl>
    implements _$$GetInfoUserEventImplCopyWith<$Res> {
  __$$GetInfoUserEventImplCopyWithImpl(_$GetInfoUserEventImpl _value,
      $Res Function(_$GetInfoUserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetInfoUserEventImpl implements _GetInfoUserEvent {
  const _$GetInfoUserEventImpl();

  @override
  String toString() {
    return 'UserEvent.getInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetInfoUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInfo,
  }) {
    return getInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInfo,
  }) {
    return getInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInfo,
    required TResult orElse(),
  }) {
    if (getInfo != null) {
      return getInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInfoUserEvent value) getInfo,
  }) {
    return getInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInfoUserEvent value)? getInfo,
  }) {
    return getInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInfoUserEvent value)? getInfo,
    required TResult orElse(),
  }) {
    if (getInfo != null) {
      return getInfo(this);
    }
    return orElse();
  }
}

abstract class _GetInfoUserEvent implements UserEvent {
  const factory _GetInfoUserEvent() = _$GetInfoUserEventImpl;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserEntity user) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserEntity user)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserEntity user)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserErrorState value) error,
    required TResult Function(_UserLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserErrorState value)? error,
    TResult? Function(_UserLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserErrorState value)? error,
    TResult Function(_UserLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserLoadingStateImplCopyWith<$Res> {
  factory _$$UserLoadingStateImplCopyWith(_$UserLoadingStateImpl value,
          $Res Function(_$UserLoadingStateImpl) then) =
      __$$UserLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadingStateImpl>
    implements _$$UserLoadingStateImplCopyWith<$Res> {
  __$$UserLoadingStateImplCopyWithImpl(_$UserLoadingStateImpl _value,
      $Res Function(_$UserLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoadingStateImpl implements _UserLoadingState {
  const _$UserLoadingStateImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserEntity user) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserEntity user)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserEntity user)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserErrorState value) error,
    required TResult Function(_UserLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserErrorState value)? error,
    TResult? Function(_UserLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserErrorState value)? error,
    TResult Function(_UserLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserLoadingState implements UserState {
  const factory _UserLoadingState() = _$UserLoadingStateImpl;
}

/// @nodoc
abstract class _$$UserErrorStateImplCopyWith<$Res> {
  factory _$$UserErrorStateImplCopyWith(_$UserErrorStateImpl value,
          $Res Function(_$UserErrorStateImpl) then) =
      __$$UserErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserErrorStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserErrorStateImpl>
    implements _$$UserErrorStateImplCopyWith<$Res> {
  __$$UserErrorStateImplCopyWithImpl(
      _$UserErrorStateImpl _value, $Res Function(_$UserErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserErrorStateImpl implements _UserErrorState {
  const _$UserErrorStateImpl();

  @override
  String toString() {
    return 'UserState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserEntity user) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserEntity user)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserEntity user)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserErrorState value) error,
    required TResult Function(_UserLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserErrorState value)? error,
    TResult? Function(_UserLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserErrorState value)? error,
    TResult Function(_UserLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserErrorState implements UserState {
  const factory _UserErrorState() = _$UserErrorStateImpl;
}

/// @nodoc
abstract class _$$UserLoadedStateImplCopyWith<$Res> {
  factory _$$UserLoadedStateImplCopyWith(_$UserLoadedStateImpl value,
          $Res Function(_$UserLoadedStateImpl) then) =
      __$$UserLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$UserLoadedStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadedStateImpl>
    implements _$$UserLoadedStateImplCopyWith<$Res> {
  __$$UserLoadedStateImplCopyWithImpl(
      _$UserLoadedStateImpl _value, $Res Function(_$UserLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserLoadedStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$UserLoadedStateImpl implements _UserLoadedState {
  const _$UserLoadedStateImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'UserState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedStateImplCopyWith<_$UserLoadedStateImpl> get copyWith =>
      __$$UserLoadedStateImplCopyWithImpl<_$UserLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(UserEntity user) loaded,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(UserEntity user)? loaded,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(UserEntity user)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserErrorState value) error,
    required TResult Function(_UserLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLoadingState value)? loading,
    TResult? Function(_UserErrorState value)? error,
    TResult? Function(_UserLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserErrorState value)? error,
    TResult Function(_UserLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UserLoadedState implements UserState {
  const factory _UserLoadedState(final UserEntity user) = _$UserLoadedStateImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$UserLoadedStateImplCopyWith<_$UserLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
