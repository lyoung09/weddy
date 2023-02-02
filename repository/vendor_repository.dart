
import '../common/dummy_data.dart';
import '../model/checklist_detail.dart';
import '../model/user_item.dart';
import '../model/vendor_category.dart';
import '../service/vendor_api_service.dart';

class VendorRepository {
  const VendorRepository(this.api);

  final VendorApiService api;

  Future<List<UserServiceItem>> getBudgetVendorList(int budget, double progress) async {
    return DummyData.getCheckListData();
  }

  Future<List<UserServiceItem>> getWeddingCheckList() async {
    return DummyData.getCheckListData();
  }

  Future<VendorCategory> getVendorCategoryList() async {
    List<VendorCategoryItem> primaryProductItems = [];
    List<VendorCategoryItem> secondaryProductItems = [];

    List<VendorCategoryItem> items = DummyData.getCategoryData();
    for (int i = 0; i < items.length; i++) {
      VendorCategoryItem item = items[i];
      if (item.isOptional) {
        secondaryProductItems.add(item);
      } else {
        primaryProductItems.add(item);
      }
    }

    return VendorCategory(primaryProductItems, secondaryProductItems);
  }

  Future<ChecklistDetail> getChecklistDetail() async {
    return DummyData.getChecklistDetail();
  }
}