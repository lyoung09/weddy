import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/common/service_category_enum.dart';
import 'package:weddynew/model/vendor_category.dart';
import 'package:weddynew/model/vendor_service.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../common/image_factory.dart';
import '../../../common/local_utils.dart';
import '../../../model/user_item.dart';
import '../../../provider/boolean_provider.dart';
import 'bloc/budget_bloc.dart';
import 'bloc/budget_event.dart';

class BudgetVendorItemWidget extends BaseStatelessWidget {
  BudgetVendorItemWidget({Key? key, required this.item}) : super(key: key);

  final VendorServiceItem item;

  @override
  Widget build(BuildContext context) {
    final imageFactory = ImageFactory();
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      margin: const EdgeInsets.all(10),
      color: item.isUsed ? Colors.white : Colors.grey,
      child: Padding(
          padding: const EdgeInsets.all(6),
          child: ListTile(
              title: AutoSizeText(
                item.vendorName,
                style: Theme.of(context).textTheme.headline3,
              ),
              subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: imageFactory.categoryImageIcon(
                            categoryCode:
                                ServiceCategory.values[item.vendorServiceCode],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              AutoSizeText(item.vendorName,
                                  style: Theme.of(context).textTheme.bodyText2,
                                  maxLines: 1),
                              const SizedBox(height: 10),
                              AutoSizeText(
                                  LocalUtils.getPriceText(
                                      item.itemPrice.toInt()),
                                  style: Theme.of(context).textTheme.caption,
                                  maxLines: 1),
                            ]))
                      ])),
              trailing: BooleanProvider.createWidget(
                  (state) => Switch(
                      value: state.value,
                      onChanged: (isEnabled) => {
                            item.isUsed = isEnabled,
                            addBlocEvent<BudgetBloc>(
                                context, UpdateTotalAmountEvent()),
                            state.change(),
                          }),
                  initValue: item.isUsed))),
    );
  }
}
