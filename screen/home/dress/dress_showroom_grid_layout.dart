import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/dress_showroom_bloc.dart';
import 'dress_showroom_item_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DressShowroomGridLayout extends StatelessWidget {
  const DressShowroomGridLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<DressShowroomBloc>().pagingController;

    return RefreshIndicator(
      onRefresh: () => Future.sync(() => controller.refresh()),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: GridView.custom(
          //controller: controller,

          gridDelegate: SliverWovenGridDelegate.count(
            crossAxisCount: 2,
            pattern: [
              const WovenGridTile(0.88, crossAxisRatio: .99),
              const WovenGridTile(
                0.77,
                crossAxisRatio: 0.96,
                alignment: AlignmentDirectional.centerEnd,
              ),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: context.read<DressShowroomBloc>().state.item == null
                ? 0
                : context.read<DressShowroomBloc>().state.item!.length,
            (context, index) => DressShowroomItemWidget(
                item: context.read<DressShowroomBloc>().state.item![index]),
          ),
        ),
      ),
    );
  }
}
