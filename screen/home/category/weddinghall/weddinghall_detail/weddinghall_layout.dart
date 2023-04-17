import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/screen/home/category/weddinghall/weddinghall_detail/widget/nestedWeddingHallWidget.dart';

import '../../../../../apis/category/category_model.dart';
import '../../../../../resources/Colors.dart';
import '../../../../../resources/Images.dart';
import '../../detail/widget/like_button.dart';

import 'bloc/weddinghall_bloc.dart';
import 'bloc/weddinghall_event.dart';
import 'bloc/weddinghall_state.dart';

class WeddingHallLayout extends StatelessWidget {
  final CategoryModel category;
  final int popindex;
  final WeddingHallDetailState state;
  WeddingHallLayout(
      {super.key,
      required this.category,
      required this.state,
      required this.popindex});
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(52),
            child: state.weddinghallHallResponse == null
                ? Text('')
                : AppBar(
                    leading: IconButton(
                      icon: Images.getIcon('icon_arrow',
                          color: ColorItems.salmon),
                      onPressed: () {
                        if (popindex == 0) {
                          Navigator.of(context).pushReplacementNamed(
                              '/vendor_list',
                              arguments: category);
                          //Navigator.pop(context);
                        }
                        if (popindex == 1) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                    title: AutoSizeText(
                      state.weddinghallHallResponse!.searchVendorProfile
                                  .basicInfo.companyName.length >=
                              13
                          ? state.weddinghallHallResponse!.searchVendorProfile
                              .basicInfo.companyName
                              .substring(0, 13)
                          : state.weddinghallHallResponse!.searchVendorProfile
                              .basicInfo.companyName,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    elevation: 0,
                    actions: [
                      LikeWeddingHallButtonWidget(isLiked: state.isLiked)
                    ],
                  )),
        backgroundColor: Colors.white,
        body: BlocBuilder<WeddingHallDetailBloc, WeddingHallDetailState>(
            builder: (context, state) {
          return NestedWeddingHallWidget(
            state: state,
            id: state.weddinghallHallResponse!.searchVendorProfile.id.toInt(),
            bloccontext: context,
          );
        }));
  }
}
