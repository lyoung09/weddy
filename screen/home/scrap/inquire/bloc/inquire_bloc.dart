import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/home/scrap/inquire/bloc/inquire_event.dart';

import '../../../../../apis/category/category_data.dart';
import '../../../../../base/bloc/base_bloc.dart';
import '../../../../../repository/vendor_repository.dart';
import 'inquire_state.dart';

class InquireBloc extends BaseBloc<InquiryEvent, InquireState> {
  InquireBloc({required this.repository}) : super(InquireState()) {
    on<InitInquiryEvent>(initBloc);
    on<CancelInquiryItemEvent>(cancelBloc);
  }
  final VendorRepository repository;

  initBloc(InitInquiryEvent event, Emitter<InquireState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    final result = await repository.getUserConsultingInfoListRepository();
    final categoryList = CategoryList.getCategoryList();
    result.success((data) {
      emit(state.copyWith(
          categoryList: categoryList,
          status: BlocStatus.success,
          userConsultingInfo: data.userConsultingInfoList));
    });
  }

  cancelBloc(CancelInquiryItemEvent event, Emitter<InquireState> emit) async {
    final result = await repository.removeInquire(event.id);

    List<UserConsultingInfo> list = List.from(state.userConsultingInfo);

    list.forEach((element) {
      if (element.consultingId == event.id) {
        element.statusCode = Int64(7);
      }
    });

    if (result.resultCode == 1000) {
      emit(state.copyWith(userConsultingInfo: list));
    }
  }
}
