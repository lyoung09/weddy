import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/base_bloc.dart';
import 'package:weddynew/screen/home/scrap/first/bloc/scrap_event.dart';
import 'package:weddynew/screen/home/scrap/first/bloc/scrap_statey.dart';
import 'package:weddynew/screen/home/scrap/first/model/notify.dart';

import '../../../../../apis/category/category_data.dart';
import '../../../../../base/bloc/bloc_state.dart';
import '../../../../../repository/product_repository.dart';
import '../../../../../repository/vendor_repository.dart';

class ScrapBlocY extends BaseBloc<ScrapEventY, ScrapStateY> {
  ScrapBlocY({required this.repository, required this.productRepository})
      : super(ScrapStateY()) {
    on<InitScrapEventY>(initScrapEventToState);
    on<TabScrapEventY>(tabIndexEventToState);
    on<RemoveScrapEventY>(removeScrapEventToState);
    on<CheckScrapEventY>(checkScrapEventToState);
    on<AddConsultingEvent>(addUserConsultingEventToState);
    on<VendorCategoryTabEventY>(vendorCategoryTabEventToState);
  }
  final VendorRepository repository;
  final ProductRepository productRepository;
  TabController? tabController;

  int? tabIndex;
  initScrapEventToState(
      InitScrapEventY event, Emitter<ScrapStateY> emit) async {
    emit(state.copyWith(
      status: BlocStatus.loading,
    ));
    final result = await repository.getUserScrapListResponse();
    final categoryList = CategoryList.getCategoryList();
    List<NotifiyModel> nmList = [];
    result.success((data) {
      emit(state.copyWith(
          categoryList: categoryList,
          scrapVendorInfoList: data.scrapVendorInfo,
          //status: BlocStatus.success,
          categoryTabLength: data.scrapVendorInfo
              .map((e) => e.vendorServiceCode)
              .toSet()
              .toList()
              .length,
          tabIndex: tabIndex ?? 0));
      data.scrapVendorInfo.forEach((e) {
        // nmList.add(NotifiyModel(
        //     scrapItem: e.scrapItemList.where((element) => element.id==e.id),
        //     vendorProfileId: e.vendorProfileId.toInt(),
        //     basicInfo: e.basicInfo,
        //     id: e.scrapId.toInt(),
        //     vendorCode: e.vendorServiceCode.toInt()));

        e.scrapItemList.forEach((el) {
          nmList.add(NotifiyModel(
              scrapItem: el,
              vendorProfileId: e.vendorProfileId.toInt(),
              basicInfo: e.basicInfo,
              id: e.scrapId.toInt(),
              vendorCode: e.vendorServiceCode.toInt()));
        });
      });

      emit(state.copyWith(
        status: BlocStatus.success,
        notifiyModelList: nmList,
      ));
    });
  }

  checkScrapEventToState(
      CheckScrapEventY event, Emitter<ScrapStateY> emit) async {
    bool isScrap;
    event.notifiyModelList
            .where(
                (e) => e.value == true && e.scrapItem.vendorItem.groupId == 1)
            .isEmpty
        ? isScrap = false
        : isScrap = true;

    emit(state.copyWith(
        notifiyModelList: event.notifiyModelList,
        isScraped: isScrap,
        notifyModel:
            event.notifiyModelList.firstWhereOrNull((e) => e.value == true)));
  }

  tabIndexEventToState(TabScrapEventY event, Emitter<ScrapStateY> emit) async {
    emit(state.copyWith(tabIndex: event.tabIndex));
  }

  vendorCategoryTabEventToState(
      VendorCategoryTabEventY event, Emitter<ScrapStateY> emit) async {
    emit(state.copyWith(vendorCategoryTab: event.tabIndex));
  }

  removeScrapEventToState(
      RemoveScrapEventY event, Emitter<ScrapStateY> emit) async {
    final result = await repository.removeScrap(
        event.scrapId, event.scrapItemId, event.vendorProfileId);
    bool isScrap;
    event.notifiyModelList
            .where(
                (e) => e.value == true && e.scrapItem.vendorItem.groupId == 1)
            .isEmpty
        ? isScrap = false
        : isScrap = true;
    int tabCategoryLength = state.categoryTabLength;
    if (event.notifiyModelList
            .map((e) => e.vendorCode)
            .toSet()
            .toList()
            .length !=
        state.categoryTabLength) {
      tabCategoryLength = event.notifiyModelList
          .map((e) => e.vendorCode)
          .toSet()
          .toList()
          .length;
    }

    result.success((data) {
      emit(state.copyWith(
          notifiyModelList: event.notifiyModelList,
          isScraped: isScrap,
          categoryTabLength: tabCategoryLength));
    });
  }

  addUserConsultingEventToState(
      AddConsultingEvent event, Emitter<ScrapStateY> emit) async {
    final result = await repository.addConsulting(
        event.contactName,
        event.contactTelNumber,
        event.contactEmail,
        event.contactCode,
        event.consultingList);

    result.success((data) {
      emit(state.copyWith(
          notifiyModelList: event.notifiyModelList, tabIndex: 1));
    });
    //emit(state.copyWith(tabIndex: 1));
  }
}
