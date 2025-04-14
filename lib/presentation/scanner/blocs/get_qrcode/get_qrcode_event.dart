part of 'get_qrcode_bloc.dart';

@freezed
class GetQrcodeEvent with _$GetQrcodeEvent {
  const factory GetQrcodeEvent.started() = _Started;
  const factory GetQrcodeEvent.getQrcode(String barcode) = _GetQrcode;
}
