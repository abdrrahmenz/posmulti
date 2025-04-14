import 'package:bloc/bloc.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/printer_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/printer_request_model.dart';

part 'printer_bloc.freezed.dart';
part 'printer_event.dart';
part 'printer_state.dart';

class PrinterBloc extends Bloc<PrinterEvent, PrinterState> {
  final PrinterRemoteDatasource printerRemoteDatasource;
  PrinterBloc(
    this.printerRemoteDatasource,
  ) : super(_Initial()) {
    on<_GetPrinters>((event, emit) async {
      emit(_Loading());
      final response = await printerRemoteDatasource.getPrinters();
      response.fold(
        (l) => emit(_Error('Failed')),
        (r) {
          if (r.data.isNotEmpty) {
            AuthLocalDatasource().savePrinter(r.data.firstWhere(
                (element) => element.isDefault,
                orElse: () => r.data.first));
          }
          emit(_Loaded(r.data));
        },
      );
    });

    on<_AddPrinter>((event, emit) async {
      emit(_Loading());
      final response = await printerRemoteDatasource.addPrinter(event.data);
      response.fold(
        (l) => emit(_Error('Failed')),
        (r) => add(_GetPrinters()),
      );
    });

    on<_DeletePrinter>((event, emit) async {
      emit(_Loading());
      final response = await printerRemoteDatasource.deletePrinter(event.id);
      response.fold(
        (l) => emit(_Error('Failed')),
        (r) => add(_GetPrinters()),
      );
    });
  }
}
