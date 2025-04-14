import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/auth_response_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final AuthLocalDatasource authLocalDatasource;
  AccountBloc(
    this.authLocalDatasource,
  ) : super(_Initial()) {
    on<_GetAccount>((event, emit) async {
      emit(_Loading());
      try {
        final authData = await authLocalDatasource.getUserData();
        final outletData = await authLocalDatasource.getOutletData();
        emit(_Loaded(authData!, outletData));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
