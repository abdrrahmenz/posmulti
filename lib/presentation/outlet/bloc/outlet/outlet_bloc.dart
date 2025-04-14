import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/outlet_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/outlet_request_model.dart';

import '../../../../data/models/responses/me_response_model.dart';

part 'outlet_bloc.freezed.dart';
part 'outlet_event.dart';
part 'outlet_state.dart';

class OutletBloc extends Bloc<OutletEvent, OutletState> {
  final OutletRemoteDatasource outletRemoteDatasource;
  OutletBloc(
    this.outletRemoteDatasource,
  ) : super(_Initial()) {
    on<_GetOutlets>((event, emit) async {
      emit(_Loading());
      final response = await outletRemoteDatasource.getOutlets();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data)),
      );
    });

    on<_AddOutlet>((event, emit) async {
      emit(_Loading());
      final response = await outletRemoteDatasource.addOutlet(event.data);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(_GetOutlets()),
      );
    });

    on<_EditOutlet>((event, emit) async {
      emit(_Loading());
      final response = await outletRemoteDatasource.updateOutlet(event.data, event.id);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(_GetOutlets()),
      );
    });
  }
}
