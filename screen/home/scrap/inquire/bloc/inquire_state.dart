import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';
import 'package:weddynew/screen/home/scrap/first/model/notify.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../apis/category/category_model.dart';
import '../../../../../base/bloc/bloc_state.dart';

part 'inquire_state.freezed.dart';

@freezed
class InquireState extends BaseBlocState with _$InquireState {
  factory InquireState({
    @Default(BlocStatus.none) BlocStatus status,
    @Default([]) List<UserConsultingInfo> userConsultingInfo,
    @Default([]) List<CategoryModel> categoryList,
  }) = _InquireState;
}
