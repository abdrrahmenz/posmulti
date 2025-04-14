part of 'outlet_bloc.dart';

@freezed
class OutletState with _$OutletState {
  const factory OutletState.initial() = _Initial;
  const factory OutletState.loading() = _Loading;
  const factory OutletState.loaded(List<Outlet> outlets) = _Loaded;
  const factory OutletState.error(String message) = _Error;
}
