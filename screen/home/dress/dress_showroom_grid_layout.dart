import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../model/dress_image.dart';
import 'bloc/dress_showroom_bloc.dart';
import 'dress_showroom_item_widget.dart';

class DressShowroomGridLayout extends StatelessWidget {
  const DressShowroomGridLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<DressShowroomBloc>().pagingController;
    return RefreshIndicator(
        onRefresh: () => Future.sync(() => controller.refresh()),
        child: PagedGridView<int, BrideDressImage>(
            pagingController: controller,
            showNoMoreItemsIndicatorAsGridChild: false,
            showNewPageProgressIndicatorAsGridChild: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              crossAxisCount: 2,
            ),
            builderDelegate: PagedChildBuilderDelegate<BrideDressImage>(
                itemBuilder: (context, item, index) => DressShowroomItemWidget(item: item)
            )
        ));
  }

}