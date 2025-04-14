part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;
  //add to product
  const factory CheckoutEvent.addToCart({
    required Product product,
    required List<BusinessSettingRequestModel> businessSetting,
  }) = _AddToCart;

  //remove from cart
  const factory CheckoutEvent.removeFromCart({
    required Product product,
    required List<BusinessSettingRequestModel> businessSetting,
  }) = _RemoveFromCart;

  //addDiscount
  const factory CheckoutEvent.addDiscount({
    required BusinessSettingRequestModel discount,
  }) = _AddDiscount;

  //removeDiscount
  const factory CheckoutEvent.removeDiscount({
    required BusinessSettingRequestModel discount,
  }) = _RemoveDiscount;
}
