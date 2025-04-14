part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.started() = _Started;
  const factory CategoryEvent.getCategories() = _GetCategories;
  //add category
  const factory CategoryEvent.addCategory({
    required String name,
  }) = _AddCategory;

  //update category
  const factory CategoryEvent.updateCategory({
    required int id,
    required String name,
  }) = _UpdateCategory;
}