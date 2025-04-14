
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_qrcode_event.dart';
part 'get_qrcode_state.dart';
part 'get_qrcode_bloc.freezed.dart';

class GetQrcodeBloc extends Bloc<GetQrcodeEvent, GetQrcodeState> {
  GetQrcodeBloc() : super(const _Initial()) {
    on<_GetQrcode>((event, emit) {
      emit(const _Loading());
      emit(_Success(event.barcode));
    });
    on<_Started>((event, emit) {
      emit(const _Initial());
    });
  }
}
