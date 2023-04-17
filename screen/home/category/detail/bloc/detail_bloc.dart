import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';

import '../../../../../base/bloc/base_bloc.dart';
import '../../../../../repository/product_repository.dart';
import '../../../../../repository/vendor_repository.dart';
import '../dummy.dart';
import 'detail_event.dart';
import 'detail_state.dart';

class VendorDetailBloc extends BaseBloc<VendorDetailEvent, VendorDetailState> {
  VendorDetailBloc(this.repository, this.vendorRepository)
      : super(VendorDetailState()) {
    on<InitVendorDetailEvent>(_initGetVendorDetail);
    on<IsLikedEvent>(getFavorite);
    on<IsScrapvent>(addScrap);
    on<IsCheckedEvent>(((event, emit) {
      emit(state.copyWith(
          isChecked: Map<int, bool>.from(event.isChecked),
          selected: event.vendorList));
    }));
  }
  final ProductRepository repository;
  final VendorRepository vendorRepository;

  _initGetVendorDetail(
      InitVendorDetailEvent event, Emitter<VendorDetailState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final result = await repository.vendorDetail(event.index);

    final scrap = await vendorRepository.getScrapId(event.index);
    result.success((GetVendorInfoResponse data) {
      emit(state.copyWith(
          status: BlocStatus.success,
          getVendorInfoResponse: data,
          isScrap: scrap.scrapItemList,
          isLiked: data.searchVendorProfile.isLike));
    });

    final videos = await vendorRepository.getVideo(event.index);

    videos.success((data) {
      emit(state.copyWith(videoList: data.promotionVideoList));
    });
  }

  getFavorite(IsLikedEvent event, Emitter<VendorDetailState> emit) async {
    if (event.isLiked == false) {
      final result = await repository.removeLike(event.index);

      if (result.isSuccess) {
        emit(state.copyWith(isLiked: false));
      }
    } else if (event.isLiked == true) {
      final result = await repository.addLike(event.index);
      if (result.isSuccess) {
        emit(state.copyWith(isLiked: true));
      }
    } else {
      debugPrint("Error");
    }
  }

  addScrap(IsScrapvent event, Emitter<VendorDetailState> emit) async {
    final result = await vendorRepository.addScrap(
        event.vendorProfileId, event.vendorServiceCode, event.scrapItems);
    final scrap = await vendorRepository.getScrapId(event.vendorProfileId);

    result.success((data) {
      if (data.resultCode == 1000) {
        emit(state.copyWith(isScrap: scrap.scrapItemList, isChecked: {}));
      }
    });
  }
}
