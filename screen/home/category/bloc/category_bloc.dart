import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../repository/vendor_repository.dart';
import 'category_event.dart';
import 'category_state.dart';

class CategoryBloc extends BaseBloc<CategoryEvent, CategoryState> {
  CategoryBloc({required this.repository}) : super(CategoryState()) {
    on<InitCategoryEvent>(_initCategoryEventToState);
  }

  final VendorRepository repository;

  void _initCategoryEventToState(
      InitCategoryEvent event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    await Future.delayed(const Duration(milliseconds: 300));
    emit(state.copyWith(
        status: BlocStatus.success,
        categories: await repository.getVendorCategoryList()));
  }
}
