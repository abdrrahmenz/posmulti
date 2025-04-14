part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = _Initial;
  const factory CheckoutState.loading() = _Loading;
  const factory CheckoutState.success(
    List<ProductQuantity> cart,
    double discount,
    double tax,
    double subtotal,
    double total,
    int totalItems,
  ) = _Success;
  const factory CheckoutState.error(String message) = _Error;
}
