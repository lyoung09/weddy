import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';

import '../../../common/shimmer_loading.dart';
import '../../../model/vendor_category.dart';
import 'bloc/category_bloc.dart';
import 'bloc/category_state.dart';
import 'category_item_widget.dart';


class CategoryListLayout extends StatelessWidget {
  const CategoryListLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return state.status.isSuccess ? Column(
            children: [
              createGridTitle(context, "필수 항목"),
              buildGridView(items: state.categories.primaryProductItems),
              const SizedBox(height: 10),
              createGridTitle(context, "선택 항목"),
              buildGridView(items: state.categories.secondaryProductItems),
            ],
          ) : ShimmerLoading().buildShimmerContent();
        }
    );
  }

  Widget createGridTitle(context, title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }

  Widget buildGridView({required List<VendorCategoryItem> items}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          child: GridView.count(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
              children: List.generate(items.length, (index) {
                return CategoryItemWidget(items[index]);
              }))),
    );
  }
}