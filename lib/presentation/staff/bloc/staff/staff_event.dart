part of 'staff_bloc.dart';

@freezed
class StaffEvent with _$StaffEvent {
  const factory StaffEvent.started() = _Started;
  const factory StaffEvent.getStaffs() = _GetStaffs;
  const factory StaffEvent.addStaff(StaffRequestModel data) = _AddStaff;
  const factory StaffEvent.editStaff(StaffRequestModel data, int id) = _EditStaff;
}