class ProductDetailEvent {}

class InitProductDetailEvent extends ProductDetailEvent {
  InitProductDetailEvent(this.serviceId);
  final int serviceId;
}
