part of 'printer_bloc.dart';

@freezed
class PrinterState with _$PrinterState {
  const factory PrinterState.initial() = _Initial;
  const factory PrinterState.loading() = _Loading;
  const factory PrinterState.loaded(List<PrinterModel> data) = _Loaded;
  const factory PrinterState.error(String message) = _Error;
}
