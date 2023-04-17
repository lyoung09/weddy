import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';

import '../../../common/shimmer_loading.dart';
import '../../../model/vendor_category.dart';
import '../../../resources/Colors.dart';
import '../../../resources/Text.dart';
import 'bloc/category_bloc.dart';
import 'bloc/category_state.dart';

class CategoryListLayout extends StatelessWidget {
  final CategoryState state;
  const CategoryListLayout({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return state.status.isSuccess
        ? Column(
            children: [
              const SizedBox(height: 10),
              createGridTitle(context, "전체 카테고리"),
              const SizedBox(height: 10),
              categoryGridview(size, context, state),
            ],
          )
        : ShimmerLoading().buildShimmerContent();
  }

  Widget createGridTitle(context, title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }

  Widget categoryGridview(size, context, CategoryState state) {
    return Container(
      width: size.width * .92,
      height: 380,
      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 2,
            mainAxisSpacing: 5,
            mainAxisExtent: 85, // here set custom Height You Want
            childAspectRatio: 1 / 1.8),
        itemCount: state.vendorCategoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/vendor_list',
                      arguments: state.vendorCategoryList[index]);
                },
                child: Container(
                  width: 52,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    //color: Colors.white,
                  ),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          state.vendorCategoryList[index].vendorIconImageUrl,
                          width: 34,
                          height: 34,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(state.vendorCategoryList[index].vendorServiceText,
                  style: TextItems.body6
                      .copyWith(fontSize: 10, color: ColorItems.spaceCadet)),
            ],
          );
        },
      ),
    );
  }
}
