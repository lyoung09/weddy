
import 'package:weddynew/model/purchase/purchase.dart';

import 'optional_info.dart';

class Contract {
  Contract(this.id, this.buyerInfo, this.purchaseInfo, this.optionalInfo, this.history);

  final int id;
  final BuyerInfo buyerInfo;
  final PurchaseInfo purchaseInfo;
  final OptionalInfo? optionalInfo;
  final List<ContractHistoryItem> history;
}

class ContractHistoryItem {
  ContractHistoryItem(this.state, this.date, this.label, this.description);

  final int state;
  final DateTime date;
  final String label;
  final String description;
}