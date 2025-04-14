part of 'sales_report_bloc.dart';

@freezed
class SalesReportState with _$SalesReportState {
  const factory SalesReportState.initial() = _Initial;
  const factory SalesReportState.loading() = _Loading;
  const factory SalesReportState.loaded(SalesReportResponseModel salesReport) = _Loaded;
  const factory SalesReportState.error(String message) = _Error;
}
