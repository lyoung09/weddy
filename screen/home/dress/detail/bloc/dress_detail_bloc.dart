import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../base/bloc/base_bloc.dart';
import '../../../../../base/bloc/bloc_state.dart';
import '../../../../../repository/dress_repository.dart';
import 'dress_detail_event.dart';
import 'dress_detail_state.dart';

class DressDetailBloc extends BaseBloc<DressDetailEvent, DressDetailState> {
  DressDetailBloc(this.repository) : super(DressDetailState()) {
    on<InitDressDetailEvent>(_initDressDetailEventToState);
  }

  final DressRepository repository;

  void _initDressDetailEventToState(InitDressDetailEvent event, Emitter<DressDetailState> emit) async {
    final data = await repository.getDressDetail(event.dressId);
    emit(state.copyWith(status: BlocStatus.success, dressDetail: data));
  }
}