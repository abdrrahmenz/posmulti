import 'package:bloc/bloc.dart';
import 'package:flutter_jago_pos_app/data/models/responses/transaction_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/order_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/order_request_model.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  OrderBloc(
    this.orderRemoteDatasource,
  ) : super(_Initial()) {
    on<_CreateOrder>((event, emit) async {
      emit(OrderState.loading());
      final result = await orderRemoteDatasource.createOrder(
        orderRequestModel: event.orderRequestModel,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
