import 'package:flutter/cupertino.dart';
import '../../../base/base_bloc_builder.dart';
import '../../../common/shimmer_loading.dart';
import 'bloc/budget_bloc.dart';
import 'budget_vendor_item_widget.dart';
import 'bloc/budget_state.dart';

class BudgetVendorLayout extends BaseBlocBuilder<BudgetBloc, BudgetState> {
  BudgetVendorLayout({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, BudgetState state) {
    return state.services.isNotEmpty
        ? ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: state.services.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BudgetVendorItemWidget(item: state.services[index]);
            })
        : ShimmerLoading().buildShimmerContent();
  }
}
