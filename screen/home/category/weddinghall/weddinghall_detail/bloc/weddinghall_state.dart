import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';

import '../../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../../base/bloc/bloc_state.dart';

part 'weddinghall_state.freezed.dart';

@freezed
class WeddingHallDetailState extends BaseBlocState
    with _$WeddingHallDetailState {
  factory WeddingHallDetailState(
      {@Default(BlocStatus.none) BlocStatus status,
      @Default([]) List<WeddinghallHall> weddingHallInfo,
      @Default([]) List<WeddinghallItem> weddingHallItem,
      @Default([]) List<WeddinghallAdditionItem> weddingHallItemExtra,
      GetWeddinghallInfoResponse? weddinghallHallResponse,
      @Default(false) bool isLiked,
      @Default(0) int mealPrice,
      @Default([]) List<ScrapItem> isScrap,
      @Default([]) List<PromotionVideo> videoList,
      @Default(0) int tabIndex}) = _WeddingHallDetailState;
}
