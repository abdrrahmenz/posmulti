import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/sales_report_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/sales_report_response_model.dart';

part 'sales_report_bloc.freezed.dart';
part 'sales_report_event.dart';
part 'sales_report_state.dart';

class SalesReportBloc extends Bloc<SalesReportEvent, SalesReportState> {
  final SalesReportRemoteDatasource salesReportRemoteDatasource;
  SalesReportBloc(
    this.salesReportRemoteDatasource,
  ) : super(_Initial()) {
    on<_GetSalesReport>((event, emit) async{
      emit(_Loading());
      final result = await salesReportRemoteDatasource.getSalesReport(event.date);
      result.fold(
        (l) => emit(_Error('Failed')),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
