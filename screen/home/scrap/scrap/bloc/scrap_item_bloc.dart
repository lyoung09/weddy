import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/base_bloc.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/provider/boolean_provider.dart';
import 'package:weddynew/screen/home/scrap/scrap/bloc/scrap_item_event.dart';
import 'package:weddynew/screen/home/scrap/scrap/bloc/scrap_item_state.dart';
import 'package:weddynew/screen/home/scrap/scrap/check_model.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../repository/vendor_repository.dart';

class ScrapItemBloc extends BaseBloc<ScrapItemEvent, ScrapItemState> {
  ScrapItemBloc({required this.repository}) : super(ScrapItemState()) {
    on<InitScrapItemEvent>(_initScrapItem);
    on<DoVendorEvent>(_isVendorEvent);
    on<IsCheckItemEvent>(_isCheckItemEvent);
    on<RemoveScrapItemEvent>(_removeScrapItemEvent);
    on<IsModalItemEvent>(_isModalItemEvent);
  }

  List<int> isChecked = [];
  final VendorRepository repository;
  BooleanProvider isAvailable = BooleanProvider(initValue: false);
  BooleanProvider canUseButton = BooleanProvider(initValue: false);
  Map<ScrapVendorInfo, bool> tt = {};

  _initScrapItem(InitScrapItemEvent event, Emitter<ScrapItemState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    final result = await repository.getUserScrapListResponse();

    result.success((data) {
      emit(state.copyWith(
          scrapVendorInfoList: data.scrapVendorInfo,
          status: BlocStatus.success));
    });
  }

  _isVendorEvent(DoVendorEvent event, Emitter<ScrapItemState> emit) {
    List<ScrapVendorInfo> list = List.from(state.scrapVendorInfoList);
    List<ScrapVendorInfo> t = [];
    if (event.isCheck == true) {
      t.addAll(list
          .where((element) =>
              element.vendorServiceCode ==
                  event.canVendorInfo.vendorServiceCode &&
              element != event.canVendorInfo)
          .toList());
    } else {
      t = [];
    }

    emit(state.copyWith(canVendorInfo: t));
  }

  _isCheckItemEvent(IsCheckItemEvent event, Emitter<ScrapItemState> emit) {
    emit(state.copyWith(canUseButtons: event.isCheck));
  }

  _removeScrapItemEvent(
      RemoveScrapItemEvent event, Emitter<ScrapItemState> emit) async {
    final result = await repository.removeScrap(
        event.scrapId, event.scrapItemId, event.vendorProfileId);

    result.success((data) {
      List<ScrapVendorInfo> list = List.from(state.scrapVendorInfoList);
      list.removeWhere((ele) => ele.scrapId == event.scrapId);
      emit(state.copyWith(scrapVendorInfoList: list));
    });
  }

  _isModalItemEvent(IsModalItemEvent event, Emitter<ScrapItemState> emit) {
    List<ScrapCheckModel> data = List.from(state.scrapCheckModel);

    data.addAll(event.scrapCheckModel);
    emit(state.copyWith(scrapCheckModel: data));
  }

  canButton(bool value) {
    if (value) {
      canUseButton.setValue(true);
    } else {
      canUseButton.setValue(false);
    }
  }
}
