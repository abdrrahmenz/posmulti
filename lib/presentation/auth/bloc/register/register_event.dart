part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  //register
  const factory RegisterEvent.register({
    required String email,
    required String password,
    required String businessName,
    required String businessAddress,
  }) = _Register;
}