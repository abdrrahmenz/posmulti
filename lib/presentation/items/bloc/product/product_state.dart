part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  //success
  const factory ProductState.success(List<Product> data) = _Success;
  //error
  const factory ProductState.error(String message) = _Error;
}
