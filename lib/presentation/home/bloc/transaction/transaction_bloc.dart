import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/order_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/transaction_response_model.dart';

part 'transaction_bloc.freezed.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  TransactionBloc(
    this.orderRemoteDatasource,
  ) : super(_Initial()) {
    on<_GetTransactions>((event, emit) async {
      emit(TransactionState.loading());
      final result = await orderRemoteDatasource.getOrderByOutletId();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
