class DressDetailEvent {}

class InitDressDetailEvent extends DressDetailEvent {
  InitDressDetailEvent(this.dressId);

  final int dressId;
}