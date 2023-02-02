import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../common/image_factory.dart';
import '../../../common/local_utils.dart';
import '../../../model/user_item.dart';
import '../../../provider/boolean_provider.dart';
import 'bloc/budget_bloc.dart';
import 'bloc/budget_event.dart';


class BudgetVendorItemWidget extends BaseStatelessWidget {
   BudgetVendorItemWidget({Key? key, required this.item}) : super(key: key);

  final UserServiceItem item;

  @override
  Widget build(BuildContext context) {
    final imageFactory = ImageFactory();
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      margin: const EdgeInsets.all(10),
      color: item.isEnabled ? Colors.white : Colors.grey,
      child: Padding(
          padding: const EdgeInsets.all(6),
          child: ListTile(
            title: AutoSizeText(
              item.vendorService.serviceCategory.displayName,
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
                          categoryCode: item.vendorService.serviceCategory,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(item.vendorService.vendorName,
                                    style: Theme.of(context).textTheme.bodyText2,
                                    maxLines: 1),
                                const SizedBox(height: 10),
                                AutoSizeText(
                                    LocalUtils.getPriceText(
                                        item.vendorService.price),
                                    style: Theme.of(context).textTheme.caption,
                                    maxLines: 1),
                              ]))
                    ])),
            trailing: BooleanProvider.createWidget(
              (state) => Switch(
                  value: state.value,
                  onChanged: (isEnabled) => {
                    item.isEnabled = isEnabled,
                    addBlocEvent<BudgetBloc>(context, UpdateTotalAmountEvent()),
                    state.change(),
                  }),
              initValue: item.isEnabled
            )
          )
      ),
    );
  }

}