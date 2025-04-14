part of 'sales_report_bloc.dart';

@freezed
class SalesReportEvent with _$SalesReportEvent {
  const factory SalesReportEvent.started() = _Started;
  const factory SalesReportEvent.getSalesReport(String date) = _GetSalesReport;
}