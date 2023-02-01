class PricingItem {
  late int itemId;
  String title;
  int minPrice;
  int maxPrice;
  String comments;
  bool isRangeValue;

  PricingItem(
      {required this.itemId,
      required this.title,
      required this.minPrice,
      required this.maxPrice,
      required this.isRangeValue,
      required this.comments});
}
