part of 'business_setting_bloc.dart';

@freezed
class BusinessSettingEvent with _$BusinessSettingEvent {
  const factory BusinessSettingEvent.started() = _Started;
  const factory BusinessSettingEvent.addBusinessSetting(
      BusinessSettingRequestModel data) = _AddBusinessSetting;
  const factory BusinessSettingEvent.getBusinessSetting() = _GetBusinessSetting;

  const factory BusinessSettingEvent.editBusinessSetting(
      BusinessSettingRequestModel data, int id) = _EditBusinessSetting;

  const factory BusinessSettingEvent.deleteBusinessSetting(int id) =
      _DeleteBusinessSetting;
}