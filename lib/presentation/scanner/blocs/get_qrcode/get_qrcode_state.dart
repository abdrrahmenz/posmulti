part of 'get_qrcode_bloc.dart';

@freezed
class GetQrcodeState with _$GetQrcodeState {
  const factory GetQrcodeState.initial() = _Initial;
  const factory GetQrcodeState.loading() = _Loading;

  const factory GetQrcodeState.success(String barcode) = _Success;
}
