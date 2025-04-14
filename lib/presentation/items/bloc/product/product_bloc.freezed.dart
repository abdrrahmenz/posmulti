// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
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
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductEvent.started()';
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
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
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
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProductsImpl implements _GetProducts {
  const _$GetProductsImpl();

  @override
  String toString() {
    return 'ProductEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements ProductEvent {
  const factory _GetProducts() = _$GetProductsImpl;
}

/// @nodoc
abstract class _$$GetProductByIdImplCopyWith<$Res> {
  factory _$$GetProductByIdImplCopyWith(_$GetProductByIdImpl value,
          $Res Function(_$GetProductByIdImpl) then) =
      __$$GetProductByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetProductByIdImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductByIdImpl>
    implements _$$GetProductByIdImplCopyWith<$Res> {
  __$$GetProductByIdImplCopyWithImpl(
      _$GetProductByIdImpl _value, $Res Function(_$GetProductByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetProductByIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductByIdImpl implements _GetProductById {
  const _$GetProductByIdImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProductEvent.getProductById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      __$$GetProductByIdImplCopyWithImpl<_$GetProductByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return getProductById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return getProductById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (getProductById != null) {
      return getProductById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return getProductById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return getProductById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (getProductById != null) {
      return getProductById(this);
    }
    return orElse();
  }
}

abstract class _GetProductById implements ProductEvent {
  const factory _GetProductById(final String id) = _$GetProductByIdImpl;

  String get id;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductByIdImplCopyWith<_$GetProductByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductImplCopyWith<$Res> {
  factory _$$AddProductImplCopyWith(
          _$AddProductImpl value, $Res Function(_$AddProductImpl) then) =
      __$$AddProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$AddProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddProductImpl>
    implements _$$AddProductImplCopyWith<$Res> {
  __$$AddProductImplCopyWithImpl(
      _$AddProductImpl _value, $Res Function(_$AddProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$AddProductImpl implements _AddProduct {
  const _$AddProductImpl(this.product);

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'ProductEvent.addProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      __$$AddProductImplCopyWithImpl<_$AddProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements ProductEvent {
  const factory _AddProduct(final ProductModel product) = _$AddProductImpl;

  ProductModel get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductWithImageImplCopyWith<$Res> {
  factory _$$AddProductWithImageImplCopyWith(_$AddProductWithImageImpl value,
          $Res Function(_$AddProductWithImageImpl) then) =
      __$$AddProductWithImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, XFile image});
}

/// @nodoc
class __$$AddProductWithImageImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddProductWithImageImpl>
    implements _$$AddProductWithImageImplCopyWith<$Res> {
  __$$AddProductWithImageImplCopyWithImpl(_$AddProductWithImageImpl _value,
      $Res Function(_$AddProductWithImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? image = null,
  }) {
    return _then(_$AddProductWithImageImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$AddProductWithImageImpl implements _AddProductWithImage {
  const _$AddProductWithImageImpl(this.product, this.image);

  @override
  final ProductModel product;
  @override
  final XFile image;

  @override
  String toString() {
    return 'ProductEvent.addProductWithImage(product: $product, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductWithImageImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, image);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductWithImageImplCopyWith<_$AddProductWithImageImpl> get copyWith =>
      __$$AddProductWithImageImplCopyWithImpl<_$AddProductWithImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return addProductWithImage(product, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return addProductWithImage?.call(product, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (addProductWithImage != null) {
      return addProductWithImage(product, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return addProductWithImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return addProductWithImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (addProductWithImage != null) {
      return addProductWithImage(this);
    }
    return orElse();
  }
}

abstract class _AddProductWithImage implements ProductEvent {
  const factory _AddProductWithImage(
          final ProductModel product, final XFile image) =
      _$AddProductWithImageImpl;

  ProductModel get product;
  XFile get image;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductWithImageImplCopyWith<_$AddProductWithImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProductImplCopyWith<$Res> {
  factory _$$EditProductImplCopyWith(
          _$EditProductImpl value, $Res Function(_$EditProductImpl) then) =
      __$$EditProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, int id});
}

/// @nodoc
class __$$EditProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$EditProductImpl>
    implements _$$EditProductImplCopyWith<$Res> {
  __$$EditProductImplCopyWithImpl(
      _$EditProductImpl _value, $Res Function(_$EditProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? id = null,
  }) {
    return _then(_$EditProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditProductImpl implements _EditProduct {
  const _$EditProductImpl(this.product, this.id);

  @override
  final ProductModel product;
  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.editProduct(product: $product, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProductImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, id);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProductImplCopyWith<_$EditProductImpl> get copyWith =>
      __$$EditProductImplCopyWithImpl<_$EditProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return editProduct(product, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return editProduct?.call(product, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(product, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return editProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return editProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(this);
    }
    return orElse();
  }
}

abstract class _EditProduct implements ProductEvent {
  const factory _EditProduct(final ProductModel product, final int id) =
      _$EditProductImpl;

  ProductModel get product;
  int get id;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProductImplCopyWith<_$EditProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProductWithImageImplCopyWith<$Res> {
  factory _$$EditProductWithImageImplCopyWith(_$EditProductWithImageImpl value,
          $Res Function(_$EditProductWithImageImpl) then) =
      __$$EditProductWithImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, XFile image, int id});
}

/// @nodoc
class __$$EditProductWithImageImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$EditProductWithImageImpl>
    implements _$$EditProductWithImageImplCopyWith<$Res> {
  __$$EditProductWithImageImplCopyWithImpl(_$EditProductWithImageImpl _value,
      $Res Function(_$EditProductWithImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_$EditProductWithImageImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EditProductWithImageImpl implements _EditProductWithImage {
  const _$EditProductWithImageImpl(this.product, this.image, this.id);

  @override
  final ProductModel product;
  @override
  final XFile image;
  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.editProductWithImage(product: $product, image: $image, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProductWithImageImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, image, id);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProductWithImageImplCopyWith<_$EditProductWithImageImpl>
      get copyWith =>
          __$$EditProductWithImageImplCopyWithImpl<_$EditProductWithImageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return editProductWithImage(product, image, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return editProductWithImage?.call(product, image, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (editProductWithImage != null) {
      return editProductWithImage(product, image, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return editProductWithImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return editProductWithImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (editProductWithImage != null) {
      return editProductWithImage(this);
    }
    return orElse();
  }
}

abstract class _EditProductWithImage implements ProductEvent {
  const factory _EditProductWithImage(
          final ProductModel product, final XFile image, final int id) =
      _$EditProductWithImageImpl;

  ProductModel get product;
  XFile get image;
  int get id;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProductWithImageImplCopyWith<_$EditProductWithImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductImplCopyWith<$Res> {
  factory _$$SearchProductImplCopyWith(
          _$SearchProductImpl value, $Res Function(_$SearchProductImpl) then) =
      __$$SearchProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SearchProductImpl>
    implements _$$SearchProductImplCopyWith<$Res> {
  __$$SearchProductImplCopyWithImpl(
      _$SearchProductImpl _value, $Res Function(_$SearchProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchProductImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductImpl implements _SearchProduct {
  const _$SearchProductImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ProductEvent.searchProduct(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      __$$SearchProductImplCopyWithImpl<_$SearchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return searchProduct(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return searchProduct?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class _SearchProduct implements ProductEvent {
  const factory _SearchProduct(final String query) = _$SearchProductImpl;

  String get query;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStockImplCopyWith<$Res> {
  factory _$$UpdateStockImplCopyWith(
          _$UpdateStockImpl value, $Res Function(_$UpdateStockImpl) then) =
      __$$UpdateStockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stock, String type, String note, int id});
}

/// @nodoc
class __$$UpdateStockImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$UpdateStockImpl>
    implements _$$UpdateStockImplCopyWith<$Res> {
  __$$UpdateStockImplCopyWithImpl(
      _$UpdateStockImpl _value, $Res Function(_$UpdateStockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? type = null,
    Object? note = null,
    Object? id = null,
  }) {
    return _then(_$UpdateStockImpl(
      null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateStockImpl implements _UpdateStock {
  const _$UpdateStockImpl(this.stock, this.type, this.note, this.id);

  @override
  final int stock;
  @override
  final String type;
  @override
  final String note;
  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.updateStock(stock: $stock, type: $type, note: $note, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStockImpl &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stock, type, note, id);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStockImplCopyWith<_$UpdateStockImpl> get copyWith =>
      __$$UpdateStockImplCopyWithImpl<_$UpdateStockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return updateStock(stock, type, note, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return updateStock?.call(stock, type, note, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (updateStock != null) {
      return updateStock(stock, type, note, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return updateStock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return updateStock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (updateStock != null) {
      return updateStock(this);
    }
    return orElse();
  }
}

abstract class _UpdateStock implements ProductEvent {
  const factory _UpdateStock(
          final int stock, final String type, final String note, final int id) =
      _$UpdateStockImpl;

  int get stock;
  String get type;
  String get note;
  int get id;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStockImplCopyWith<_$UpdateStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsByCategoryImplCopyWith<$Res> {
  factory _$$GetProductsByCategoryImplCopyWith(
          _$GetProductsByCategoryImpl value,
          $Res Function(_$GetProductsByCategoryImpl) then) =
      __$$GetProductsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$GetProductsByCategoryImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductsByCategoryImpl>
    implements _$$GetProductsByCategoryImplCopyWith<$Res> {
  __$$GetProductsByCategoryImplCopyWithImpl(_$GetProductsByCategoryImpl _value,
      $Res Function(_$GetProductsByCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$GetProductsByCategoryImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetProductsByCategoryImpl implements _GetProductsByCategory {
  const _$GetProductsByCategoryImpl(this.categoryId);

  @override
  final int categoryId;

  @override
  String toString() {
    return 'ProductEvent.getProductsByCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsByCategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsByCategoryImplCopyWith<_$GetProductsByCategoryImpl>
      get copyWith => __$$GetProductsByCategoryImplCopyWithImpl<
          _$GetProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return getProductsByCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return getProductsByCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (getProductsByCategory != null) {
      return getProductsByCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return getProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return getProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (getProductsByCategory != null) {
      return getProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetProductsByCategory implements ProductEvent {
  const factory _GetProductsByCategory(final int categoryId) =
      _$GetProductsByCategoryImpl;

  int get categoryId;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductsByCategoryImplCopyWith<_$GetProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductByBarcodeImplCopyWith<$Res> {
  factory _$$GetProductByBarcodeImplCopyWith(_$GetProductByBarcodeImpl value,
          $Res Function(_$GetProductByBarcodeImpl) then) =
      __$$GetProductByBarcodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String barcode});
}

/// @nodoc
class __$$GetProductByBarcodeImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductByBarcodeImpl>
    implements _$$GetProductByBarcodeImplCopyWith<$Res> {
  __$$GetProductByBarcodeImplCopyWithImpl(_$GetProductByBarcodeImpl _value,
      $Res Function(_$GetProductByBarcodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
  }) {
    return _then(_$GetProductByBarcodeImpl(
      null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductByBarcodeImpl implements _GetProductByBarcode {
  const _$GetProductByBarcodeImpl(this.barcode);

  @override
  final String barcode;

  @override
  String toString() {
    return 'ProductEvent.getProductByBarcode(barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductByBarcodeImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductByBarcodeImplCopyWith<_$GetProductByBarcodeImpl> get copyWith =>
      __$$GetProductByBarcodeImplCopyWithImpl<_$GetProductByBarcodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function(String id) getProductById,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(ProductModel product, XFile image)
        addProductWithImage,
    required TResult Function(ProductModel product, int id) editProduct,
    required TResult Function(ProductModel product, XFile image, int id)
        editProductWithImage,
    required TResult Function(String query) searchProduct,
    required TResult Function(int stock, String type, String note, int id)
        updateStock,
    required TResult Function(int categoryId) getProductsByCategory,
    required TResult Function(String barcode) getProductByBarcode,
  }) {
    return getProductByBarcode(barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function(String id)? getProductById,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(ProductModel product, XFile image)? addProductWithImage,
    TResult? Function(ProductModel product, int id)? editProduct,
    TResult? Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult? Function(String query)? searchProduct,
    TResult? Function(int stock, String type, String note, int id)? updateStock,
    TResult? Function(int categoryId)? getProductsByCategory,
    TResult? Function(String barcode)? getProductByBarcode,
  }) {
    return getProductByBarcode?.call(barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function(String id)? getProductById,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(ProductModel product, XFile image)? addProductWithImage,
    TResult Function(ProductModel product, int id)? editProduct,
    TResult Function(ProductModel product, XFile image, int id)?
        editProductWithImage,
    TResult Function(String query)? searchProduct,
    TResult Function(int stock, String type, String note, int id)? updateStock,
    TResult Function(int categoryId)? getProductsByCategory,
    TResult Function(String barcode)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (getProductByBarcode != null) {
      return getProductByBarcode(barcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProductById value) getProductById,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_AddProductWithImage value) addProductWithImage,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_EditProductWithImage value) editProductWithImage,
    required TResult Function(_SearchProduct value) searchProduct,
    required TResult Function(_UpdateStock value) updateStock,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetProductByBarcode value) getProductByBarcode,
  }) {
    return getProductByBarcode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProductById value)? getProductById,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_AddProductWithImage value)? addProductWithImage,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_EditProductWithImage value)? editProductWithImage,
    TResult? Function(_SearchProduct value)? searchProduct,
    TResult? Function(_UpdateStock value)? updateStock,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetProductByBarcode value)? getProductByBarcode,
  }) {
    return getProductByBarcode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProductById value)? getProductById,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_AddProductWithImage value)? addProductWithImage,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_EditProductWithImage value)? editProductWithImage,
    TResult Function(_SearchProduct value)? searchProduct,
    TResult Function(_UpdateStock value)? updateStock,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetProductByBarcode value)? getProductByBarcode,
    required TResult orElse(),
  }) {
    if (getProductByBarcode != null) {
      return getProductByBarcode(this);
    }
    return orElse();
  }
}

abstract class _GetProductByBarcode implements ProductEvent {
  const factory _GetProductByBarcode(final String barcode) =
      _$GetProductByBarcodeImpl;

  String get barcode;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductByBarcodeImplCopyWith<_$GetProductByBarcodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> data) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> data)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> data)? success,
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
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
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
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
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
    required TResult Function(List<Product> data) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> data)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> data)? success,
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

abstract class _Initial implements ProductState {
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
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
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
    required TResult Function(List<Product> data) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> data)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> data)? success,
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

abstract class _Loading implements ProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Product> data) : _data = data;

  final List<Product> _data;
  @override
  List<Product> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ProductState
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
    required TResult Function(List<Product> data) success,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> data)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
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

abstract class _Success implements ProductState {
  const factory _Success(final List<Product> data) = _$SuccessImpl;

  List<Product> get data;

  /// Create a copy of ProductState
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
    extends _$ProductStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
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
    return 'ProductState.error(message: $message)';
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

  /// Create a copy of ProductState
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
    required TResult Function(List<Product> data) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> data)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> data)? success,
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

abstract class _Error implements ProductState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
