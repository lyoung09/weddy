import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/screen/do_product/detail/bloc/product_detail_event.dart';
import 'package:weddynew/screen/do_product/detail/bloc/product_detail_state.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../repository/product_repository.dart';


class ProductDetailBloc extends BaseBloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc(this.repository) : super(ProductDetailState()) {
    on<InitProductDetailEvent>(_initProductDetailEventToState);
  }

  final ProductRepository repository;

  void _initProductDetailEventToState(InitProductDetailEvent event, Emitter<ProductDetailState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    final result = await repository.getVendorServiceDetail(event.serviceId);
    await Future.delayed(const Duration(milliseconds: 300));
    result.success((data) {
      emit(state.copyWith(status: BlocStatus.success, data: data));
    }).error((errorCode, message) {
      showSnackBar(message);
      emit(state.copyWith(status: BlocStatus.error));
    });
  }
}