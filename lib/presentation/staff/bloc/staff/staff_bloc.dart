import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/staff_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/staff_request_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';

part 'staff_bloc.freezed.dart';
part 'staff_event.dart';
part 'staff_state.dart';

class StaffBloc extends Bloc<StaffEvent, StaffState> {
  final StaffRemoteDatasource staffRemoteDatasource;
  StaffBloc(
    this.staffRemoteDatasource,
  ) : super(_Initial()) {
    on<_GetStaffs>((event, emit) async {
      emit(_Loading());
      final response = await staffRemoteDatasource.getStaffs();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data)),
      );
    });

    on<_AddStaff>((event, emit) async {
      emit(_Loading());
      final response = await staffRemoteDatasource.addStaff(event.data);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(_GetStaffs()),
      );
    });

    on<_EditStaff>((event, emit) async {
      emit(_Loading());
      final response =
          await staffRemoteDatasource.updateStaff(event.data, event.id);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(_GetStaffs()),
      );
    });
  }
}
