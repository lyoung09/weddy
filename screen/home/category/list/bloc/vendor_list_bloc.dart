import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_event.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_state.dart';

import '../../../../../base/bloc/base_bloc.dart';
import '../../../../../repository/product_repository.dart';
import '../../../../../repository/vendor_repository.dart';

class VendorListBloc extends BaseBloc<VendorListEvent, VendorListState> {
  VendorListBloc({required this.repository, required this.productRepository})
      : super(VendorListState()) {
    on<InitVendorListEvent>(_initVendorListEventToState);
    on<SearchVendorListEvent>(_searchVendorListEventToState);
    on<ToggleEvent>(_toggleEventToState);
    on<IsLikedListEvent>(_getFavoriteList);
    on<FilterNumEvent>(_filterEventToState);
  }

  final VendorRepository repository;
  final ProductRepository productRepository;

  _initVendorListEventToState(
      InitVendorListEvent event, Emitter<VendorListState> emit) async {
    debugPrint("hello world");
    emit(state.copyWith(status: BlocStatus.loading));

    final result =
        await repository.getCategoryVendorList(event.vendorServiceCode);

    result.success((data) {
      emit(state.copyWith(
          status: BlocStatus.success,
          searchVendorProfileList: data.searchVendorProfileList));
    });
  }

  _searchVendorListEventToState(
      SearchVendorListEvent event, Emitter<VendorListState> emit) async {
    emit(state.copyWith(
        searchText: event.searchText, status: BlocStatus.loading));
    final result = await repository.getSearchResult(
        event.searchText, 2, event.vendorServiceCode);

    result.success((data) {
      emit(state.copyWith(
          searchText: event.searchText,
          status: BlocStatus.success,
          searchVendorProfileList: data.searchVendorProfileList));
    });
  }

  _toggleEventToState(ToggleEvent event, Emitter<VendorListState> emit) {
    emit(state.copyWith(toggle: event.toggle));
  }

  _filterEventToState(FilterNumEvent event, Emitter<VendorListState> emit) {
    List<SearchVendorProfile> list = List.from(state.searchVendorProfileList);
    switch (event.filternum) {
      case 0:
        break;
      case 1:
        list.sort((a, b) {
          return b.totalLikes.toInt().compareTo(a.totalLikes.toInt());
        });

        break;
      case 2:
        list.sort((a, b) {
          return a.basicInfo.companyName
              .substring(0, 1)
              .codeUnits[0]
              .compareTo(b.basicInfo.companyName.substring(0, 1).codeUnits[0]);
        });
        break;
    }

    emit(state.copyWith(
        filterNum: event.filternum, searchVendorProfileList: list));
  }

  _getFavoriteList(
      IsLikedListEvent event, Emitter<VendorListState> emit) async {
    List<SearchVendorProfile> list = List.from(state.searchVendorProfileList);

    if (event.isLiked == false) {
      final result = await productRepository.removeLike(event.index);

      if (result.isSuccess) {
        // list.forEach((element) {
        //   if (element.id == event.index) {
        //     element.isLike = false;
        //     element.totalLikes--;
        //   }
        // });
        // list.firstWhere((element) => element.id == event.index).isLike =
        //     event.isLiked;
      }
    } else if (event.isLiked == true) {
      final result = await productRepository.addLike(event.index);

      if (result.isSuccess) {
        // list.forEach((element) {
        //   if (element.id == event.index) {
        //     element.isLike = true;
        //     element.totalLikes++;
        //   }
        // });

        // list.firstWhere((element) => element.id == event.index).isLike =
        //     event.isLiked;
      }
    } else {
      debugPrint("Error");
    }

    emit(state.copyWith(
      searchVendorProfileList: [...list],
    ));
  }
}
