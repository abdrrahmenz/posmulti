import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/auth_remote_datasource.dart';

part 'logout_bloc.freezed.dart';
part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthRemoteDataSource authRemoteDataSource;
  LogoutBloc(
    this.authRemoteDataSource,
  ) : super(_Initial()) {
    on<_Logout>((event, emit) async{
      emit(LogoutState.loading());
      final result = await authRemoteDataSource.logout();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success()),
      );
    });
  }
}
