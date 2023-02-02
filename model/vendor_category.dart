class VendorCategory {
  const VendorCategory(
    this.primaryProductItems,
    this.secondaryProductItems
  );

  final List<VendorCategoryItem> primaryProductItems;
  final List<VendorCategoryItem> secondaryProductItems;
}

class VendorCategoryItem {
  VendorCategoryItem(
      this.categoryId,
      this.displayName,
      this.isImportant,
      this.isOptional
  );

  final int categoryId;
  final String displayName;
  final bool isImportant;
  final bool isOptional;
}
