// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BusinessSettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BusinessSettingRequestModel data)
        addBusinessSetting,
    required TResult Function() getBusinessSetting,
    required TResult Function(BusinessSettingRequestModel data, int id)
        editBusinessSetting,
    required TResult Function(int id) deleteBusinessSetting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult? Function()? getBusinessSetting,
    TResult? Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult? Function(int id)? deleteBusinessSetting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult Function()? getBusinessSetting,
    TResult Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult Function(int id)? deleteBusinessSetting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBusinessSetting value) addBusinessSetting,
    required TResult Function(_GetBusinessSetting value) getBusinessSetting,
    required TResult Function(_EditBusinessSetting value) editBusinessSetting,
    required TResult Function(_DeleteBusinessSetting value)
        deleteBusinessSetting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult? Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult? Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult? Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessSettingEventCopyWith<$Res> {
  factory $BusinessSettingEventCopyWith(BusinessSettingEvent value,
          $Res Function(BusinessSettingEvent) then) =
      _$BusinessSettingEventCopyWithImpl<$Res, BusinessSettingEvent>;
}

/// @nodoc
class _$BusinessSettingEventCopyWithImpl<$Res,
        $Val extends BusinessSettingEvent>
    implements $BusinessSettingEventCopyWith<$Res> {
  _$BusinessSettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessSettingEvent
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
    extends _$BusinessSettingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BusinessSettingEvent.started()';
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
    required TResult Function(BusinessSettingRequestModel data)
        addBusinessSetting,
    required TResult Function() getBusinessSetting,
    required TResult Function(BusinessSettingRequestModel data, int id)
        editBusinessSetting,
    required TResult Function(int id) deleteBusinessSetting,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult? Function()? getBusinessSetting,
    TResult? Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult? Function(int id)? deleteBusinessSetting,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult Function()? getBusinessSetting,
    TResult Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult Function(int id)? deleteBusinessSetting,
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
    required TResult Function(_AddBusinessSetting value) addBusinessSetting,
    required TResult Function(_GetBusinessSetting value) getBusinessSetting,
    required TResult Function(_EditBusinessSetting value) editBusinessSetting,
    required TResult Function(_DeleteBusinessSetting value)
        deleteBusinessSetting,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult? Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult? Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult? Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BusinessSettingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddBusinessSettingImplCopyWith<$Res> {
  factory _$$AddBusinessSettingImplCopyWith(_$AddBusinessSettingImpl value,
          $Res Function(_$AddBusinessSettingImpl) then) =
      __$$AddBusinessSettingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BusinessSettingRequestModel data});
}

/// @nodoc
class __$$AddBusinessSettingImplCopyWithImpl<$Res>
    extends _$BusinessSettingEventCopyWithImpl<$Res, _$AddBusinessSettingImpl>
    implements _$$AddBusinessSettingImplCopyWith<$Res> {
  __$$AddBusinessSettingImplCopyWithImpl(_$AddBusinessSettingImpl _value,
      $Res Function(_$AddBusinessSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AddBusinessSettingImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BusinessSettingRequestModel,
    ));
  }
}

/// @nodoc

class _$AddBusinessSettingImpl implements _AddBusinessSetting {
  const _$AddBusinessSettingImpl(this.data);

  @override
  final BusinessSettingRequestModel data;

  @override
  String toString() {
    return 'BusinessSettingEvent.addBusinessSetting(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBusinessSettingImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBusinessSettingImplCopyWith<_$AddBusinessSettingImpl> get copyWith =>
      __$$AddBusinessSettingImplCopyWithImpl<_$AddBusinessSettingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BusinessSettingRequestModel data)
        addBusinessSetting,
    required TResult Function() getBusinessSetting,
    required TResult Function(BusinessSettingRequestModel data, int id)
        editBusinessSetting,
    required TResult Function(int id) deleteBusinessSetting,
  }) {
    return addBusinessSetting(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult? Function()? getBusinessSetting,
    TResult? Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult? Function(int id)? deleteBusinessSetting,
  }) {
    return addBusinessSetting?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult Function()? getBusinessSetting,
    TResult Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult Function(int id)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (addBusinessSetting != null) {
      return addBusinessSetting(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBusinessSetting value) addBusinessSetting,
    required TResult Function(_GetBusinessSetting value) getBusinessSetting,
    required TResult Function(_EditBusinessSetting value) editBusinessSetting,
    required TResult Function(_DeleteBusinessSetting value)
        deleteBusinessSetting,
  }) {
    return addBusinessSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult? Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult? Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult? Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
  }) {
    return addBusinessSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (addBusinessSetting != null) {
      return addBusinessSetting(this);
    }
    return orElse();
  }
}

abstract class _AddBusinessSetting implements BusinessSettingEvent {
  const factory _AddBusinessSetting(final BusinessSettingRequestModel data) =
      _$AddBusinessSettingImpl;

  BusinessSettingRequestModel get data;

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddBusinessSettingImplCopyWith<_$AddBusinessSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBusinessSettingImplCopyWith<$Res> {
  factory _$$GetBusinessSettingImplCopyWith(_$GetBusinessSettingImpl value,
          $Res Function(_$GetBusinessSettingImpl) then) =
      __$$GetBusinessSettingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBusinessSettingImplCopyWithImpl<$Res>
    extends _$BusinessSettingEventCopyWithImpl<$Res, _$GetBusinessSettingImpl>
    implements _$$GetBusinessSettingImplCopyWith<$Res> {
  __$$GetBusinessSettingImplCopyWithImpl(_$GetBusinessSettingImpl _value,
      $Res Function(_$GetBusinessSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetBusinessSettingImpl implements _GetBusinessSetting {
  const _$GetBusinessSettingImpl();

  @override
  String toString() {
    return 'BusinessSettingEvent.getBusinessSetting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBusinessSettingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BusinessSettingRequestModel data)
        addBusinessSetting,
    required TResult Function() getBusinessSetting,
    required TResult Function(BusinessSettingRequestModel data, int id)
        editBusinessSetting,
    required TResult Function(int id) deleteBusinessSetting,
  }) {
    return getBusinessSetting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult? Function()? getBusinessSetting,
    TResult? Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult? Function(int id)? deleteBusinessSetting,
  }) {
    return getBusinessSetting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult Function()? getBusinessSetting,
    TResult Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult Function(int id)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (getBusinessSetting != null) {
      return getBusinessSetting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBusinessSetting value) addBusinessSetting,
    required TResult Function(_GetBusinessSetting value) getBusinessSetting,
    required TResult Function(_EditBusinessSetting value) editBusinessSetting,
    required TResult Function(_DeleteBusinessSetting value)
        deleteBusinessSetting,
  }) {
    return getBusinessSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult? Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult? Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult? Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
  }) {
    return getBusinessSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (getBusinessSetting != null) {
      return getBusinessSetting(this);
    }
    return orElse();
  }
}

abstract class _GetBusinessSetting implements BusinessSettingEvent {
  const factory _GetBusinessSetting() = _$GetBusinessSettingImpl;
}

/// @nodoc
abstract class _$$EditBusinessSettingImplCopyWith<$Res> {
  factory _$$EditBusinessSettingImplCopyWith(_$EditBusinessSettingImpl value,
          $Res Function(_$EditBusinessSettingImpl) then) =
      __$$EditBusinessSettingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BusinessSettingRequestModel data, int id});
}

/// @nodoc
class __$$EditBusinessSettingImplCopyWithImpl<$Res>
    extends _$BusinessSettingEventCopyWithImpl<$Res, _$EditBusinessSettingImpl>
    implements _$$EditBusinessSettingImplCopyWith<$Res> {
  __$$EditBusinessSettingImplCopyWithImpl(_$EditBusinessSettingImpl _value,
      $Res Function(_$EditBusinessSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_$EditBusinessSettingImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BusinessSettingRequestModel,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditBusinessSettingImpl implements _EditBusinessSetting {
  const _$EditBusinessSettingImpl(this.data, this.id);

  @override
  final BusinessSettingRequestModel data;
  @override
  final int id;

  @override
  String toString() {
    return 'BusinessSettingEvent.editBusinessSetting(data: $data, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditBusinessSettingImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, id);

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditBusinessSettingImplCopyWith<_$EditBusinessSettingImpl> get copyWith =>
      __$$EditBusinessSettingImplCopyWithImpl<_$EditBusinessSettingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BusinessSettingRequestModel data)
        addBusinessSetting,
    required TResult Function() getBusinessSetting,
    required TResult Function(BusinessSettingRequestModel data, int id)
        editBusinessSetting,
    required TResult Function(int id) deleteBusinessSetting,
  }) {
    return editBusinessSetting(data, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult? Function()? getBusinessSetting,
    TResult? Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult? Function(int id)? deleteBusinessSetting,
  }) {
    return editBusinessSetting?.call(data, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult Function()? getBusinessSetting,
    TResult Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult Function(int id)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (editBusinessSetting != null) {
      return editBusinessSetting(data, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBusinessSetting value) addBusinessSetting,
    required TResult Function(_GetBusinessSetting value) getBusinessSetting,
    required TResult Function(_EditBusinessSetting value) editBusinessSetting,
    required TResult Function(_DeleteBusinessSetting value)
        deleteBusinessSetting,
  }) {
    return editBusinessSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult? Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult? Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult? Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
  }) {
    return editBusinessSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (editBusinessSetting != null) {
      return editBusinessSetting(this);
    }
    return orElse();
  }
}

abstract class _EditBusinessSetting implements BusinessSettingEvent {
  const factory _EditBusinessSetting(
          final BusinessSettingRequestModel data, final int id) =
      _$EditBusinessSettingImpl;

  BusinessSettingRequestModel get data;
  int get id;

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditBusinessSettingImplCopyWith<_$EditBusinessSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBusinessSettingImplCopyWith<$Res> {
  factory _$$DeleteBusinessSettingImplCopyWith(
          _$DeleteBusinessSettingImpl value,
          $Res Function(_$DeleteBusinessSettingImpl) then) =
      __$$DeleteBusinessSettingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteBusinessSettingImplCopyWithImpl<$Res>
    extends _$BusinessSettingEventCopyWithImpl<$Res,
        _$DeleteBusinessSettingImpl>
    implements _$$DeleteBusinessSettingImplCopyWith<$Res> {
  __$$DeleteBusinessSettingImplCopyWithImpl(_$DeleteBusinessSettingImpl _value,
      $Res Function(_$DeleteBusinessSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteBusinessSettingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteBusinessSettingImpl implements _DeleteBusinessSetting {
  const _$DeleteBusinessSettingImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'BusinessSettingEvent.deleteBusinessSetting(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBusinessSettingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBusinessSettingImplCopyWith<_$DeleteBusinessSettingImpl>
      get copyWith => __$$DeleteBusinessSettingImplCopyWithImpl<
          _$DeleteBusinessSettingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BusinessSettingRequestModel data)
        addBusinessSetting,
    required TResult Function() getBusinessSetting,
    required TResult Function(BusinessSettingRequestModel data, int id)
        editBusinessSetting,
    required TResult Function(int id) deleteBusinessSetting,
  }) {
    return deleteBusinessSetting(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult? Function()? getBusinessSetting,
    TResult? Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult? Function(int id)? deleteBusinessSetting,
  }) {
    return deleteBusinessSetting?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BusinessSettingRequestModel data)? addBusinessSetting,
    TResult Function()? getBusinessSetting,
    TResult Function(BusinessSettingRequestModel data, int id)?
        editBusinessSetting,
    TResult Function(int id)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (deleteBusinessSetting != null) {
      return deleteBusinessSetting(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBusinessSetting value) addBusinessSetting,
    required TResult Function(_GetBusinessSetting value) getBusinessSetting,
    required TResult Function(_EditBusinessSetting value) editBusinessSetting,
    required TResult Function(_DeleteBusinessSetting value)
        deleteBusinessSetting,
  }) {
    return deleteBusinessSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult? Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult? Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult? Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
  }) {
    return deleteBusinessSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBusinessSetting value)? addBusinessSetting,
    TResult Function(_GetBusinessSetting value)? getBusinessSetting,
    TResult Function(_EditBusinessSetting value)? editBusinessSetting,
    TResult Function(_DeleteBusinessSetting value)? deleteBusinessSetting,
    required TResult orElse(),
  }) {
    if (deleteBusinessSetting != null) {
      return deleteBusinessSetting(this);
    }
    return orElse();
  }
}

abstract class _DeleteBusinessSetting implements BusinessSettingEvent {
  const factory _DeleteBusinessSetting(final int id) =
      _$DeleteBusinessSettingImpl;

  int get id;

  /// Create a copy of BusinessSettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBusinessSettingImplCopyWith<_$DeleteBusinessSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BusinessSettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<BusinessSettingRequestModel> data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BusinessSettingRequestModel> data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BusinessSettingRequestModel> data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessSettingStateCopyWith<$Res> {
  factory $BusinessSettingStateCopyWith(BusinessSettingState value,
          $Res Function(BusinessSettingState) then) =
      _$BusinessSettingStateCopyWithImpl<$Res, BusinessSettingState>;
}

/// @nodoc
class _$BusinessSettingStateCopyWithImpl<$Res,
        $Val extends BusinessSettingState>
    implements $BusinessSettingStateCopyWith<$Res> {
  _$BusinessSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessSettingState
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
    extends _$BusinessSettingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BusinessSettingState.initial()';
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
    required TResult Function(String message) error,
    required TResult Function(List<BusinessSettingRequestModel> data) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BusinessSettingRequestModel> data)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BusinessSettingRequestModel> data)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BusinessSettingState {
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
    extends _$BusinessSettingStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BusinessSettingState.loading()';
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
    required TResult Function(String message) error,
    required TResult Function(List<BusinessSettingRequestModel> data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BusinessSettingRequestModel> data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BusinessSettingRequestModel> data)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BusinessSettingState {
  const factory _Loading() = _$LoadingImpl;
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
    extends _$BusinessSettingStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingState
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
    return 'BusinessSettingState.error(message: $message)';
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

  /// Create a copy of BusinessSettingState
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
    required TResult Function(String message) error,
    required TResult Function(List<BusinessSettingRequestModel> data) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BusinessSettingRequestModel> data)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BusinessSettingRequestModel> data)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BusinessSettingState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of BusinessSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BusinessSettingRequestModel> data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BusinessSettingStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BusinessSettingRequestModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<BusinessSettingRequestModel> data)
      : _data = data;

  final List<BusinessSettingRequestModel> _data;
  @override
  List<BusinessSettingRequestModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BusinessSettingState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BusinessSettingState
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
    required TResult Function(String message) error,
    required TResult Function(List<BusinessSettingRequestModel> data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BusinessSettingRequestModel> data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BusinessSettingRequestModel> data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BusinessSettingState {
  const factory _Loaded(final List<BusinessSettingRequestModel> data) =
      _$LoadedImpl;

  List<BusinessSettingRequestModel> get data;

  /// Create a copy of BusinessSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
