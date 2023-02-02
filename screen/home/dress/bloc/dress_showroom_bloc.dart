import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../model/dress_image.dart';
import '../../../../repository/dress_repository.dart';
import 'dress_showroom_event.dart';
import 'dress_showroom_state.dart';


class DressShowroomBloc extends BaseBloc<DressShowroomEvent, DressShowroomState> {
  DressShowroomBloc(this.repository) : super(DressShowroomState()) {
    on<InitDressShowroomEvent>(_initDressEventToState);
    pagingController.addPageRequestListener((pageKey) {
      _next(pageKey);
    });
  }

  final DressRepository repository;

  final PagingController<int, BrideDressImage> pagingController = PagingController(firstPageKey: 0);

  void _initDressEventToState(InitDressShowroomEvent event, Emitter<DressShowroomState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));
    await _next(0);
    emit(state.copyWith(status: BlocStatus.success));
  }

  Future<void> _next(int page) async {
    final data = await repository.getDressList(page, 20);
    await Future.delayed(const Duration(milliseconds: 300));
    pagingController.appendPage(data, page + 1);
  }
}