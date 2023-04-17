import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';

class VendorCategoryCustom {
  const VendorCategoryCustom(
      this.primaryProductItems, this.secondaryProductItems);

  final List<VendorCategoryItem> primaryProductItems;
  final List<VendorCategoryItem> secondaryProductItems;
}

class VendorCategoryItem {
  VendorCategoryItem(
      this.categoryId, this.displayName, this.isImportant, this.isOptional);

  final int categoryId;
  final String displayName;
  final bool isImportant;
  final bool isOptional;
}

class BudgetCategory {
  const BudgetCategory(this.primaryProductItems, this.secondaryProductItems);

  final List<VendorServiceItem> primaryProductItems;
  final List<VendorServiceItem> secondaryProductItems;
}
