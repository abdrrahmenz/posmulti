part of 'staff_bloc.dart';

@freezed
class StaffState with _$StaffState {
  const factory StaffState.initial() = _Initial;
  const factory StaffState.loading() = _Loading;
  const factory StaffState.error(String message) = _Error;
  const factory StaffState.loaded(List<UserModel> data) = _Loaded;
}
