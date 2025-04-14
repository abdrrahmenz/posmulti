import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_jago_pos_app/data/datasources/category_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/category_response_model.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRemoteDataSource categoryRemoteDataSource;
  CategoryBloc(
    this.categoryRemoteDataSource,
  ) : super(_Initial()) {
    on<_GetCategories>((event, emit) async {
      emit(CategoryState.loading());
      final result = await categoryRemoteDataSource.getCategories();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });

    //add
    on<_AddCategory>((event, emit) async {
      emit(CategoryState.loading());
      final result = await categoryRemoteDataSource.addCategory(
        event.name,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(_GetCategories());
        },
      );
    });

    //update
    on<_UpdateCategory>((event, emit) async {
      emit(CategoryState.loading());
      final result = await categoryRemoteDataSource.updateCategory(
        event.id,
        event.name,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(_GetCategories());
        },
      );
    });
  }
}
