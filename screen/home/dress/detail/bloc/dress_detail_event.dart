// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';

class DressDetailEvent {}

class InitDressDetailEvent extends DressDetailEvent {
  InitDressDetailEvent(this.item);

  final ContentsItem item;
}

class IsLikedEvent extends DressDetailEvent {
  int vendorProfileId;
  IsLikedEvent({
    required this.vendorProfileId,
  });
}

class DislikedEvent extends DressDetailEvent {
  int vendorProfileId;
  DislikedEvent({
    required this.vendorProfileId,
  });
}
