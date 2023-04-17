// ignore_for_file: public_member_api_docs, sort_constructors_first
class LikeEvent {}

class InitLikeEvent extends LikeEvent {}

class RemoveLikeEvent extends LikeEvent {
  int index;
  bool value;
  RemoveLikeEvent({
    required this.index,
    required this.value,
  });
}
