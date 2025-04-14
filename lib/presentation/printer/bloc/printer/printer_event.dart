part of 'printer_bloc.dart';

@freezed
class PrinterEvent with _$PrinterEvent {
  const factory PrinterEvent.started() = _Started;
  const factory PrinterEvent.getPrinters() = _GetPrinters;
  const factory PrinterEvent.addPrinter(PrinterModel data) = _AddPrinter;
  const factory PrinterEvent.deletePrinter(int id) = _DeletePrinter;
}