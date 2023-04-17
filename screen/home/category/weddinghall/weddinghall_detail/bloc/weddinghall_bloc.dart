import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';

import 'package:weddynew/screen/home/category/weddinghall/weddinghall_detail/bloc/weddinghall_event.dart';
import 'package:weddynew/screen/home/category/weddinghall/weddinghall_detail/bloc/weddinghall_state.dart';

import '../../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../../base/bloc/base_bloc.dart';
import '../../../../../../repository/product_repository.dart';
import '../../../../../../repository/vendor_repository.dart';

class WeddingHallDetailBloc
    extends BaseBloc<WeddinghallDetailEvent, WeddingHallDetailState> {
  WeddingHallDetailBloc({
    required this.repository,
    required this.vendorRepository,
  }) : super(WeddingHallDetailState()) {
    on<InitWeddinghallDetailEvent>(_initWeddingDetailBloc);
    on<TabChangeWeddinghallDetailEvent>(_tabChange);
    on<IsLikedWeddingDetailEvent>(_getFavorite);
    on<IsScrapedWeddingDetailEvent>(_addScrap);
  }

  final ProductRepository repository;
  final VendorRepository vendorRepository;

  _initWeddingDetailBloc(InitWeddinghallDetailEvent event,
      Emitter<WeddingHallDetailState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    final result =
        await repository.getWeddingHallProfile(event.vendorProfileId);

    result.success((GetWeddinghallInfoResponse data) {
      emit(state.copyWith(
          status: BlocStatus.loading,
          weddinghallHallResponse: data,
          isLiked: data.searchVendorProfile.isLike));
    });

    final result2 =
        await repository.getWeddingHallDetailInfo(event.vendorProfileId);
    final scrap = await vendorRepository.getScrapId(event.vendorProfileId);

    result2.success((data) {
      emit(state.copyWith(
        status: BlocStatus.success,
        weddingHallInfo: data.weddinghallHall,
        isScrap: scrap.scrapItemList,
      ));
    });

    final videos = await vendorRepository.getVideo(event.vendorProfileId);

    videos.success((data) {
      emit(state.copyWith(videoList: data.promotionVideoList));
    });
  }

  _tabChange(TabChangeWeddinghallDetailEvent event,
      Emitter<WeddingHallDetailState> emit) async {
    if (event.tabIndex == 0) {
      final result =
          await repository.getWeddingHallDetailInfo(event.vendorProfileId);

      result.success((GetWeddinghallHallResponse data) {
        emit(state.copyWith(
            status: BlocStatus.success,
            weddingHallInfo: data.weddinghallHall,
            tabIndex: event.tabIndex,
            mealPrice: data.mealPrice.toInt()));
      });
    } else if (event.tabIndex == 1) {
      final result =
          await repository.getWeddingHallDetailItem(event.vendorProfileId);

      result.success((GetWeddinghallItemResponse data) {
        emit(state.copyWith(
            status: BlocStatus.success,
            weddingHallItem: data.weddinghallItem,
            weddingHallItemExtra: data.weddinghallAdditionItem,
            tabIndex: event.tabIndex));
      });
    }
  }

  _getFavorite(IsLikedWeddingDetailEvent event,
      Emitter<WeddingHallDetailState> emit) async {
    if (event.isLiked == false) {
      final result = await repository.removeLike(event.vendorProfileId);

      if (result.isSuccess) {
        emit(state.copyWith(isLiked: false));
      }
    } else if (event.isLiked == true) {
      final result = await repository.addLike(event.vendorProfileId);
      if (result.isSuccess) {
        emit(state.copyWith(isLiked: true));
      }
    } else {}
  }

  _addScrap(IsScrapedWeddingDetailEvent event,
      Emitter<WeddingHallDetailState> emit) async {
    //List<int> scrapList = List.from(state.isScrap);
    ScrapItem t = ScrapItem(
        totalPrice: Int64(event.totalPrice),
        amount: Int64(event.amount),
        vendorItem: VendorItem(
            itemId: event.vendorItem.itemId, price: event.vendorItem.price));

    final result = await vendorRepository.addWeddingHallScrap(
        event.vendorProfileId, 1100, t);
    final scrap = await vendorRepository.getScrapId(event.vendorProfileId);

    result.success((data) {
      // scrapList.add(event.vendorItem.itemId.toInt());
      if (data.resultCode == 1000) {
        emit(state.copyWith(isScrap: scrap.scrapItemList));
      }
    });
  }
}
