part of 'outlet_bloc.dart';

@freezed
class OutletEvent with _$OutletEvent {
  const factory OutletEvent.started() = _Started;
  //get outlets
  const factory OutletEvent.getOutlets() = _GetOutlets;
  //add outlet
  const factory OutletEvent.addOutlet(OutletRequestModel data) = _AddOutlet;

  //edit outlet
  const factory OutletEvent.editOutlet(OutletRequestModel data, int id) = _EditOutlet;
}