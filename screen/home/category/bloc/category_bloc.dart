import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/category/category_data.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/dao/user_profile_dao.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../repository/vendor_repository.dart';
import 'category_event.dart';
import 'category_state.dart';

class CategoryBloc extends BaseBloc<CategoryEvent, CategoryState> {
  CategoryBloc({required this.repository}) : super(CategoryState()) {
    on<InitCategoryEvent>(_initCategoryEventToState);
    on<SearchCategoryEvent>(_searchCategoryEventToState);
  }

  final VendorRepository repository;

  void _initCategoryEventToState(
      InitCategoryEvent event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    //final result = await repository.getVendorCategoryResponse();

    final List<CategoryModel> categoryList = CategoryList.getCategoryList();
    final user = await UserProfileDao().getProfile();

    if (user != null) {
      emit(state.copyWith(
          vendorCategoryList: categoryList,
          status: BlocStatus.success,
          user: user));
    }
  }

  void _searchCategoryEventToState(
      SearchCategoryEvent event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(
        searchText: event.searchText, status: BlocStatus.loading));
    if (event.searchText.isNotEmpty) {
      final result =
          await repository.getSearchResult(event.searchText, 1, null);

      result.success((data) {
        emit(state.copyWith(
            searchText: event.searchText,
            status: BlocStatus.success,
            searchVendorProfile: data.searchVendorProfileList));
      });
    }
    emit(state.copyWith(searchText: '', status: BlocStatus.success));
  }
}
