part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.started() = _Started;
  //get account
  const factory AccountEvent.getAccount() = _GetAccount;
}