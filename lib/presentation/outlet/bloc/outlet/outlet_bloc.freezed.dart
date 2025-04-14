// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outlet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOutlets,
    required TResult Function(OutletRequestModel data) addOutlet,
    required TResult Function(OutletRequestModel data, int id) editOutlet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOutlets,
    TResult? Function(OutletRequestModel data)? addOutlet,
    TResult? Function(OutletRequestModel data, int id)? editOutlet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOutlets,
    TResult Function(OutletRequestModel data)? addOutlet,
    TResult Function(OutletRequestModel data, int id)? editOutlet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOutlets value) getOutlets,
    required TResult Function(_AddOutlet value) addOutlet,
    required TResult Function(_EditOutlet value) editOutlet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOutlets value)? getOutlets,
    TResult? Function(_AddOutlet value)? addOutlet,
    TResult? Function(_EditOutlet value)? editOutlet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOutlets value)? getOutlets,
    TResult Function(_AddOutlet value)? addOutlet,
    TResult Function(_EditOutlet value)? editOutlet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletEventCopyWith<$Res> {
  factory $OutletEventCopyWith(
          OutletEvent value, $Res Function(OutletEvent) then) =
      _$OutletEventCopyWithImpl<$Res, OutletEvent>;
}

/// @nodoc
class _$OutletEventCopyWithImpl<$Res, $Val extends OutletEvent>
    implements $OutletEventCopyWith<$Res> {
  _$OutletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OutletEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OutletEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOutlets,
    required TResult Function(OutletRequestModel data) addOutlet,
    required TResult Function(OutletRequestModel data, int id) editOutlet,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOutlets,
    TResult? Function(OutletRequestModel data)? addOutlet,
    TResult? Function(OutletRequestModel data, int id)? editOutlet,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOutlets,
    TResult Function(OutletRequestModel data)? addOutlet,
    TResult Function(OutletRequestModel data, int id)? editOutlet,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOutlets value) getOutlets,
    required TResult Function(_AddOutlet value) addOutlet,
    required TResult Function(_EditOutlet value) editOutlet,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOutlets value)? getOutlets,
    TResult? Function(_AddOutlet value)? addOutlet,
    TResult? Function(_EditOutlet value)? editOutlet,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOutlets value)? getOutlets,
    TResult Function(_AddOutlet value)? addOutlet,
    TResult Function(_EditOutlet value)? editOutlet,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OutletEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetOutletsImplCopyWith<$Res> {
  factory _$$GetOutletsImplCopyWith(
          _$GetOutletsImpl value, $Res Function(_$GetOutletsImpl) then) =
      __$$GetOutletsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOutletsImplCopyWithImpl<$Res>
    extends _$OutletEventCopyWithImpl<$Res, _$GetOutletsImpl>
    implements _$$GetOutletsImplCopyWith<$Res> {
  __$$GetOutletsImplCopyWithImpl(
      _$GetOutletsImpl _value, $Res Function(_$GetOutletsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOutletsImpl implements _GetOutlets {
  const _$GetOutletsImpl();

  @override
  String toString() {
    return 'OutletEvent.getOutlets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOutletsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOutlets,
    required TResult Function(OutletRequestModel data) addOutlet,
    required TResult Function(OutletRequestModel data, int id) editOutlet,
  }) {
    return getOutlets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOutlets,
    TResult? Function(OutletRequestModel data)? addOutlet,
    TResult? Function(OutletRequestModel data, int id)? editOutlet,
  }) {
    return getOutlets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOutlets,
    TResult Function(OutletRequestModel data)? addOutlet,
    TResult Function(OutletRequestModel data, int id)? editOutlet,
    required TResult orElse(),
  }) {
    if (getOutlets != null) {
      return getOutlets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOutlets value) getOutlets,
    required TResult Function(_AddOutlet value) addOutlet,
    required TResult Function(_EditOutlet value) editOutlet,
  }) {
    return getOutlets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOutlets value)? getOutlets,
    TResult? Function(_AddOutlet value)? addOutlet,
    TResult? Function(_EditOutlet value)? editOutlet,
  }) {
    return getOutlets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOutlets value)? getOutlets,
    TResult Function(_AddOutlet value)? addOutlet,
    TResult Function(_EditOutlet value)? editOutlet,
    required TResult orElse(),
  }) {
    if (getOutlets != null) {
      return getOutlets(this);
    }
    return orElse();
  }
}

abstract class _GetOutlets implements OutletEvent {
  const factory _GetOutlets() = _$GetOutletsImpl;
}

/// @nodoc
abstract class _$$AddOutletImplCopyWith<$Res> {
  factory _$$AddOutletImplCopyWith(
          _$AddOutletImpl value, $Res Function(_$AddOutletImpl) then) =
      __$$AddOutletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OutletRequestModel data});
}

/// @nodoc
class __$$AddOutletImplCopyWithImpl<$Res>
    extends _$OutletEventCopyWithImpl<$Res, _$AddOutletImpl>
    implements _$$AddOutletImplCopyWith<$Res> {
  __$$AddOutletImplCopyWithImpl(
      _$AddOutletImpl _value, $Res Function(_$AddOutletImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AddOutletImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OutletRequestModel,
    ));
  }
}

/// @nodoc

class _$AddOutletImpl implements _AddOutlet {
  const _$AddOutletImpl(this.data);

  @override
  final OutletRequestModel data;

  @override
  String toString() {
    return 'OutletEvent.addOutlet(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOutletImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOutletImplCopyWith<_$AddOutletImpl> get copyWith =>
      __$$AddOutletImplCopyWithImpl<_$AddOutletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOutlets,
    required TResult Function(OutletRequestModel data) addOutlet,
    required TResult Function(OutletRequestModel data, int id) editOutlet,
  }) {
    return addOutlet(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOutlets,
    TResult? Function(OutletRequestModel data)? addOutlet,
    TResult? Function(OutletRequestModel data, int id)? editOutlet,
  }) {
    return addOutlet?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOutlets,
    TResult Function(OutletRequestModel data)? addOutlet,
    TResult Function(OutletRequestModel data, int id)? editOutlet,
    required TResult orElse(),
  }) {
    if (addOutlet != null) {
      return addOutlet(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOutlets value) getOutlets,
    required TResult Function(_AddOutlet value) addOutlet,
    required TResult Function(_EditOutlet value) editOutlet,
  }) {
    return addOutlet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOutlets value)? getOutlets,
    TResult? Function(_AddOutlet value)? addOutlet,
    TResult? Function(_EditOutlet value)? editOutlet,
  }) {
    return addOutlet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOutlets value)? getOutlets,
    TResult Function(_AddOutlet value)? addOutlet,
    TResult Function(_EditOutlet value)? editOutlet,
    required TResult orElse(),
  }) {
    if (addOutlet != null) {
      return addOutlet(this);
    }
    return orElse();
  }
}

abstract class _AddOutlet implements OutletEvent {
  const factory _AddOutlet(final OutletRequestModel data) = _$AddOutletImpl;

  OutletRequestModel get data;

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOutletImplCopyWith<_$AddOutletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditOutletImplCopyWith<$Res> {
  factory _$$EditOutletImplCopyWith(
          _$EditOutletImpl value, $Res Function(_$EditOutletImpl) then) =
      __$$EditOutletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OutletRequestModel data, int id});
}

/// @nodoc
class __$$EditOutletImplCopyWithImpl<$Res>
    extends _$OutletEventCopyWithImpl<$Res, _$EditOutletImpl>
    implements _$$EditOutletImplCopyWith<$Res> {
  __$$EditOutletImplCopyWithImpl(
      _$EditOutletImpl _value, $Res Function(_$EditOutletImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_$EditOutletImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OutletRequestModel,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditOutletImpl implements _EditOutlet {
  const _$EditOutletImpl(this.data, this.id);

  @override
  final OutletRequestModel data;
  @override
  final int id;

  @override
  String toString() {
    return 'OutletEvent.editOutlet(data: $data, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditOutletImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, id);

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditOutletImplCopyWith<_$EditOutletImpl> get copyWith =>
      __$$EditOutletImplCopyWithImpl<_$EditOutletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getOutlets,
    required TResult Function(OutletRequestModel data) addOutlet,
    required TResult Function(OutletRequestModel data, int id) editOutlet,
  }) {
    return editOutlet(data, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getOutlets,
    TResult? Function(OutletRequestModel data)? addOutlet,
    TResult? Function(OutletRequestModel data, int id)? editOutlet,
  }) {
    return editOutlet?.call(data, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getOutlets,
    TResult Function(OutletRequestModel data)? addOutlet,
    TResult Function(OutletRequestModel data, int id)? editOutlet,
    required TResult orElse(),
  }) {
    if (editOutlet != null) {
      return editOutlet(data, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetOutlets value) getOutlets,
    required TResult Function(_AddOutlet value) addOutlet,
    required TResult Function(_EditOutlet value) editOutlet,
  }) {
    return editOutlet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetOutlets value)? getOutlets,
    TResult? Function(_AddOutlet value)? addOutlet,
    TResult? Function(_EditOutlet value)? editOutlet,
  }) {
    return editOutlet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetOutlets value)? getOutlets,
    TResult Function(_AddOutlet value)? addOutlet,
    TResult Function(_EditOutlet value)? editOutlet,
    required TResult orElse(),
  }) {
    if (editOutlet != null) {
      return editOutlet(this);
    }
    return orElse();
  }
}

abstract class _EditOutlet implements OutletEvent {
  const factory _EditOutlet(final OutletRequestModel data, final int id) =
      _$EditOutletImpl;

  OutletRequestModel get data;
  int get id;

  /// Create a copy of OutletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditOutletImplCopyWith<_$EditOutletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OutletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Outlet> outlets) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Outlet> outlets)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Outlet> outlets)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletStateCopyWith<$Res> {
  factory $OutletStateCopyWith(
          OutletState value, $Res Function(OutletState) then) =
      _$OutletStateCopyWithImpl<$Res, OutletState>;
}

/// @nodoc
class _$OutletStateCopyWithImpl<$Res, $Val extends OutletState>
    implements $OutletStateCopyWith<$Res> {
  _$OutletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OutletStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OutletState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Outlet> outlets) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Outlet> outlets)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Outlet> outlets)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OutletState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OutletStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OutletState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Outlet> outlets) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Outlet> outlets)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Outlet> outlets)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OutletState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Outlet> outlets});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$OutletStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlets = null,
  }) {
    return _then(_$LoadedImpl(
      null == outlets
          ? _value._outlets
          : outlets // ignore: cast_nullable_to_non_nullable
              as List<Outlet>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Outlet> outlets) : _outlets = outlets;

  final List<Outlet> _outlets;
  @override
  List<Outlet> get outlets {
    if (_outlets is EqualUnmodifiableListView) return _outlets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outlets);
  }

  @override
  String toString() {
    return 'OutletState.loaded(outlets: $outlets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._outlets, _outlets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_outlets));

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Outlet> outlets) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(outlets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Outlet> outlets)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(outlets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Outlet> outlets)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(outlets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OutletState {
  const factory _Loaded(final List<Outlet> outlets) = _$LoadedImpl;

  List<Outlet> get outlets;

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$OutletStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OutletState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Outlet> outlets) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Outlet> outlets)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Outlet> outlets)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OutletState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of OutletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
