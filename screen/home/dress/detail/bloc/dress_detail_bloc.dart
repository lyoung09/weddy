import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/provider/boolean_provider.dart';
import 'package:weddynew/repository/product_repository.dart';

import '../../../../../base/bloc/base_bloc.dart';
import '../../../../../base/bloc/bloc_state.dart';
import '../../../../../repository/dress_repository.dart';
import 'dress_detail_event.dart';
import 'dress_detail_state.dart';

class DressDetailBloc extends BaseBloc<DressDetailEvent, DressDetailState> {
  DressDetailBloc({required this.repository, required this.productRepository})
      : super(DressDetailState()) {
    on<InitDressDetailEvent>(_initDressDetailEventToState);
    on<IsLikedEvent>(_likeDressDetailEventToState);
    on<DislikedEvent>(_dislikeDressDetailEventToState);
  }

  final DressRepository repository;
  final ProductRepository productRepository;

  BooleanProvider isLiked = BooleanProvider();

  void _initDressDetailEventToState(
      InitDressDetailEvent event, Emitter<DressDetailState> emit) async {
    // final data = await repository.getDressDetail(event.dressId);
    //final data = await repository.getDetailDress(event.item.itemId.toInt());
    final result = await repository.getDressImageDetail(event.item);

    result.success((data) {
      isLiked.setValue(data.isLike);
      emit(state.copyWith(status: BlocStatus.success, dressDetail: data));
    });

    // likelist.success((data) {
    //   debugPrint(data.bookmarkList)
    // });
  }

  _likeDressDetailEventToState(
      IsLikedEvent event, Emitter<DressDetailState> emit) async {
    final result = await productRepository.removeLike(event.vendorProfileId);
    result.success((data) {
      isLiked.setValue(false);
    });
  }

  _dislikeDressDetailEventToState(
      DislikedEvent event, Emitter<DressDetailState> emit) async {
    final result = await productRepository.addLike(event.vendorProfileId);
    result.success((data) {
      isLiked.setValue(true);
    });
  }
}
