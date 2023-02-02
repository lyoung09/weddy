import 'package:weddynew/model/vendor/visit.dart';

import 'purchase/contract.dart';

class ChecklistDetail {
  ChecklistDetail(this.vendorId, this.vendorName, this.vendorAddress, {this.contract, this.visit});

  final int vendorId;
  final String vendorName;
  final String vendorAddress;
  final Contract? contract;
  final Visit? visit;
}