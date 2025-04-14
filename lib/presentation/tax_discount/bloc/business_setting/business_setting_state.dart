part of 'business_setting_bloc.dart';

@freezed
class BusinessSettingState with _$BusinessSettingState {
  const factory BusinessSettingState.initial() = _Initial;
  const factory BusinessSettingState.loading() = _Loading;
  const factory BusinessSettingState.error(String message) = _Error;
  const factory BusinessSettingState.loaded(
      List<BusinessSettingRequestModel> data) = _Loaded;
}
