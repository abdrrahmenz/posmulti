part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = _Started;
  //create order
  const factory OrderEvent.createOrder(
    OrderRequestModel orderRequestModel,
  ) = _CreateOrder;
}
