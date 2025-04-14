// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        addToCart,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        removeFromCart,
    required TResult Function(BusinessSettingRequestModel discount) addDiscount,
    required TResult Function(BusinessSettingRequestModel discount)
        removeDiscount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult? Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult? Function(BusinessSettingRequestModel discount)? removeDiscount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult Function(BusinessSettingRequestModel discount)? removeDiscount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutEvent
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
    extends _$CheckoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CheckoutEvent.started()';
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
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        addToCart,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        removeFromCart,
    required TResult Function(BusinessSettingRequestModel discount) addDiscount,
    required TResult Function(BusinessSettingRequestModel discount)
        removeDiscount,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult? Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult? Function(BusinessSettingRequestModel discount)? removeDiscount,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult Function(BusinessSettingRequestModel discount)? removeDiscount,
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
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Product product, List<BusinessSettingRequestModel> businessSetting});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? businessSetting = null,
  }) {
    return _then(_$AddToCartImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      businessSetting: null == businessSetting
          ? _value._businessSetting
          : businessSetting // ignore: cast_nullable_to_non_nullable
              as List<BusinessSettingRequestModel>,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(
      {required this.product,
      required final List<BusinessSettingRequestModel> businessSetting})
      : _businessSetting = businessSetting;

  @override
  final Product product;
  final List<BusinessSettingRequestModel> _businessSetting;
  @override
  List<BusinessSettingRequestModel> get businessSetting {
    if (_businessSetting is EqualUnmodifiableListView) return _businessSetting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businessSetting);
  }

  @override
  String toString() {
    return 'CheckoutEvent.addToCart(product: $product, businessSetting: $businessSetting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._businessSetting, _businessSetting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product,
      const DeepCollectionEquality().hash(_businessSetting));

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        addToCart,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        removeFromCart,
    required TResult Function(BusinessSettingRequestModel discount) addDiscount,
    required TResult Function(BusinessSettingRequestModel discount)
        removeDiscount,
  }) {
    return addToCart(product, businessSetting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult? Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult? Function(BusinessSettingRequestModel discount)? removeDiscount,
  }) {
    return addToCart?.call(product, businessSetting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult Function(BusinessSettingRequestModel discount)? removeDiscount,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product, businessSetting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CheckoutEvent {
  const factory _AddToCart(
          {required final Product product,
          required final List<BusinessSettingRequestModel> businessSetting}) =
      _$AddToCartImpl;

  Product get product;
  List<BusinessSettingRequestModel> get businessSetting;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartImplCopyWith<$Res> {
  factory _$$RemoveFromCartImplCopyWith(_$RemoveFromCartImpl value,
          $Res Function(_$RemoveFromCartImpl) then) =
      __$$RemoveFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Product product, List<BusinessSettingRequestModel> businessSetting});
}

/// @nodoc
class __$$RemoveFromCartImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveFromCartImpl>
    implements _$$RemoveFromCartImplCopyWith<$Res> {
  __$$RemoveFromCartImplCopyWithImpl(
      _$RemoveFromCartImpl _value, $Res Function(_$RemoveFromCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? businessSetting = null,
  }) {
    return _then(_$RemoveFromCartImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      businessSetting: null == businessSetting
          ? _value._businessSetting
          : businessSetting // ignore: cast_nullable_to_non_nullable
              as List<BusinessSettingRequestModel>,
    ));
  }
}

/// @nodoc

class _$RemoveFromCartImpl implements _RemoveFromCart {
  const _$RemoveFromCartImpl(
      {required this.product,
      required final List<BusinessSettingRequestModel> businessSetting})
      : _businessSetting = businessSetting;

  @override
  final Product product;
  final List<BusinessSettingRequestModel> _businessSetting;
  @override
  List<BusinessSettingRequestModel> get businessSetting {
    if (_businessSetting is EqualUnmodifiableListView) return _businessSetting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businessSetting);
  }

  @override
  String toString() {
    return 'CheckoutEvent.removeFromCart(product: $product, businessSetting: $businessSetting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._businessSetting, _businessSetting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product,
      const DeepCollectionEquality().hash(_businessSetting));

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      __$$RemoveFromCartImplCopyWithImpl<_$RemoveFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        addToCart,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        removeFromCart,
    required TResult Function(BusinessSettingRequestModel discount) addDiscount,
    required TResult Function(BusinessSettingRequestModel discount)
        removeDiscount,
  }) {
    return removeFromCart(product, businessSetting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult? Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult? Function(BusinessSettingRequestModel discount)? removeDiscount,
  }) {
    return removeFromCart?.call(product, businessSetting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult Function(BusinessSettingRequestModel discount)? removeDiscount,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(product, businessSetting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCart implements CheckoutEvent {
  const factory _RemoveFromCart(
          {required final Product product,
          required final List<BusinessSettingRequestModel> businessSetting}) =
      _$RemoveFromCartImpl;

  Product get product;
  List<BusinessSettingRequestModel> get businessSetting;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDiscountImplCopyWith<$Res> {
  factory _$$AddDiscountImplCopyWith(
          _$AddDiscountImpl value, $Res Function(_$AddDiscountImpl) then) =
      __$$AddDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BusinessSettingRequestModel discount});
}

/// @nodoc
class __$$AddDiscountImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddDiscountImpl>
    implements _$$AddDiscountImplCopyWith<$Res> {
  __$$AddDiscountImplCopyWithImpl(
      _$AddDiscountImpl _value, $Res Function(_$AddDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$AddDiscountImpl(
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as BusinessSettingRequestModel,
    ));
  }
}

/// @nodoc

class _$AddDiscountImpl implements _AddDiscount {
  const _$AddDiscountImpl({required this.discount});

  @override
  final BusinessSettingRequestModel discount;

  @override
  String toString() {
    return 'CheckoutEvent.addDiscount(discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDiscountImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      __$$AddDiscountImplCopyWithImpl<_$AddDiscountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        addToCart,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        removeFromCart,
    required TResult Function(BusinessSettingRequestModel discount) addDiscount,
    required TResult Function(BusinessSettingRequestModel discount)
        removeDiscount,
  }) {
    return addDiscount(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult? Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult? Function(BusinessSettingRequestModel discount)? removeDiscount,
  }) {
    return addDiscount?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult Function(BusinessSettingRequestModel discount)? removeDiscount,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
  }) {
    return addDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
  }) {
    return addDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(this);
    }
    return orElse();
  }
}

abstract class _AddDiscount implements CheckoutEvent {
  const factory _AddDiscount(
          {required final BusinessSettingRequestModel discount}) =
      _$AddDiscountImpl;

  BusinessSettingRequestModel get discount;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDiscountImplCopyWith<$Res> {
  factory _$$RemoveDiscountImplCopyWith(_$RemoveDiscountImpl value,
          $Res Function(_$RemoveDiscountImpl) then) =
      __$$RemoveDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BusinessSettingRequestModel discount});
}

/// @nodoc
class __$$RemoveDiscountImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveDiscountImpl>
    implements _$$RemoveDiscountImplCopyWith<$Res> {
  __$$RemoveDiscountImplCopyWithImpl(
      _$RemoveDiscountImpl _value, $Res Function(_$RemoveDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$RemoveDiscountImpl(
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as BusinessSettingRequestModel,
    ));
  }
}

/// @nodoc

class _$RemoveDiscountImpl implements _RemoveDiscount {
  const _$RemoveDiscountImpl({required this.discount});

  @override
  final BusinessSettingRequestModel discount;

  @override
  String toString() {
    return 'CheckoutEvent.removeDiscount(discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDiscountImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDiscountImplCopyWith<_$RemoveDiscountImpl> get copyWith =>
      __$$RemoveDiscountImplCopyWithImpl<_$RemoveDiscountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        addToCart,
    required TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)
        removeFromCart,
    required TResult Function(BusinessSettingRequestModel discount) addDiscount,
    required TResult Function(BusinessSettingRequestModel discount)
        removeDiscount,
  }) {
    return removeDiscount(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult? Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult? Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult? Function(BusinessSettingRequestModel discount)? removeDiscount,
  }) {
    return removeDiscount?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        addToCart,
    TResult Function(
            Product product, List<BusinessSettingRequestModel> businessSetting)?
        removeFromCart,
    TResult Function(BusinessSettingRequestModel discount)? addDiscount,
    TResult Function(BusinessSettingRequestModel discount)? removeDiscount,
    required TResult orElse(),
  }) {
    if (removeDiscount != null) {
      return removeDiscount(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
  }) {
    return removeDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
  }) {
    return removeDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    required TResult orElse(),
  }) {
    if (removeDiscount != null) {
      return removeDiscount(this);
    }
    return orElse();
  }
}

abstract class _RemoveDiscount implements CheckoutEvent {
  const factory _RemoveDiscount(
          {required final BusinessSettingRequestModel discount}) =
      _$RemoveDiscountImpl;

  BusinessSettingRequestModel get discount;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveDiscountImplCopyWith<_$RemoveDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductQuantity> cart, double discount,
            double tax, double subtotal, double total, int totalItems)
        success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutState
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
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckoutState.initial()';
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
    required TResult Function(List<ProductQuantity> cart, double discount,
            double tax, double subtotal, double total, int totalItems)
        success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckoutState {
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
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CheckoutState.loading()';
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
    required TResult Function(List<ProductQuantity> cart, double discount,
            double tax, double subtotal, double total, int totalItems)
        success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CheckoutState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductQuantity> cart,
      double discount,
      double tax,
      double subtotal,
      double total,
      int totalItems});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
    Object? discount = null,
    Object? tax = null,
    Object? subtotal = null,
    Object? total = null,
    Object? totalItems = null,
  }) {
    return _then(_$SuccessImpl(
      null == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<ProductQuantity>,
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double,
      null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<ProductQuantity> cart, this.discount, this.tax,
      this.subtotal, this.total, this.totalItems)
      : _cart = cart;

  final List<ProductQuantity> _cart;
  @override
  List<ProductQuantity> get cart {
    if (_cart is EqualUnmodifiableListView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cart);
  }

  @override
  final double discount;
  @override
  final double tax;
  @override
  final double subtotal;
  @override
  final double total;
  @override
  final int totalItems;

  @override
  String toString() {
    return 'CheckoutState.success(cart: $cart, discount: $discount, tax: $tax, subtotal: $subtotal, total: $total, totalItems: $totalItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._cart, _cart) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cart),
      discount,
      tax,
      subtotal,
      total,
      totalItems);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductQuantity> cart, double discount,
            double tax, double subtotal, double total, int totalItems)
        success,
    required TResult Function(String message) error,
  }) {
    return success(cart, discount, tax, subtotal, total, totalItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(cart, discount, tax, subtotal, total, totalItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cart, discount, tax, subtotal, total, totalItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CheckoutState {
  const factory _Success(
      final List<ProductQuantity> cart,
      final double discount,
      final double tax,
      final double subtotal,
      final double total,
      final int totalItems) = _$SuccessImpl;

  List<ProductQuantity> get cart;
  double get discount;
  double get tax;
  double get subtotal;
  double get total;
  int get totalItems;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
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
    extends _$CheckoutStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
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
    return 'CheckoutState.error(message: $message)';
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

  /// Create a copy of CheckoutState
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
    required TResult Function(List<ProductQuantity> cart, double discount,
            double tax, double subtotal, double total, int totalItems)
        success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductQuantity> cart, double discount, double tax,
            double subtotal, double total, int totalItems)?
        success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CheckoutState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
