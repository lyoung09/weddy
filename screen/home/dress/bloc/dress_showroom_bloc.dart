import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';

import '../../../../base/bloc/base_bloc.dart';
import '../../../../base/bloc/bloc_state.dart';
import '../../../../repository/dress_repository.dart';
import 'dress_showroom_event.dart';
import 'dress_showroom_state.dart';

class DressShowroomBloc
    extends BaseBloc<DressShowroomEvent, DressShowroomState> {
  DressShowroomBloc(this.repository) : super(DressShowroomState()) {
    on<InitDressShowroomEvent>(_initDressEventToState);
    pagingController.addPageRequestListener((pageKey) {
      _next(pageKey);
    });
  }

  final DressRepository repository;

  final PagingController<int, ContentsItem> pagingController =
      PagingController(firstPageKey: 0);

  void _initDressEventToState(
      InitDressShowroomEvent event, Emitter<DressShowroomState> emit) async {
    final result = await repository.getDress();
    emit(state.copyWith(status: BlocStatus.loading));
    await _next(0);
    if (result.isNotEmpty) {
      emit(state.copyWith(status: BlocStatus.success, item: result));
    } else {
      emit(state.copyWith(status: BlocStatus.error));
    }
  }

  Future<void> _next(int page) async {
    //final data = await repository.getDressList(page, 20);
    final result = await repository.getDress();

    await Future.delayed(const Duration(milliseconds: 300));
    pagingController.appendPage(result, page + 1);
  }
}
