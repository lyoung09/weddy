import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/base/bloc/base_bloc.dart';
import 'package:weddynew/base/bloc/base_bloc_state.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_event.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_state.dart';
import 'package:weddynew/screen/home/category/list/vendor_list_layout.dart';
import 'package:weddynew/utils/analytics_helper.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../base/base_bloc_page.dart';
import '../../../../resources/Colors.dart';
import 'bloc/vendor_list_bloc.dart';

class VendorListPage extends BaseBlocPage<VendorListBloc, VendorListState> {
  VendorListPage({Key? key, required this.vendorCategory}) : super(key: key);
  final CategoryModel vendorCategory;

  static const String routeName = "/vendor_list";
  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (_) => VendorListBloc(
  //         repository: getIt.get(), productRepository: getIt.get())
  //       ..add(InitVendorListEvent(
  //           vendorServiceCode: vendorCategory.vendorServiceCode.toInt())),
  //     child: BlocBuilder<VendorListBloc, VendorListState>(
  //         builder: (context, state) {
  //       return state.status.isSuccess
  //           ? VendorListLayout(vendorCategory: vendorCategory, state: state)
  //           : const Scaffold(
  //               body: Center(
  //                   child: CircularProgressIndicator(
  //                 color: ColorItems.primary,
  //               )),
  //             );
  //     }),
  //   );
  // }

  @override
  Widget buildPage(BuildContext context, Widget blocBody) {
    return Container(child: blocBody);
  }

  @override
  Widget buildWidget(BuildContext context, VendorListState state) {
    return state.status.isSuccess
        ? VendorListLayout(vendorCategory: vendorCategory, state: state)
        : const Scaffold(
            body: Center(
                child: CircularProgressIndicator(
              color: ColorItems.primary,
            )),
          );
  }

  @override
  initEvent() => InitVendorListEvent(
      vendorServiceCode: vendorCategory.vendorServiceCode.toInt());
}

class VendorList extends StatelessWidget {
  const VendorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => VendorListBloc(
          repository: getIt.get(), productRepository: getIt.get()),
      child: BlocBuilder<VendorListBloc, VendorListState>(
          builder: (context, state) {
        return ListView(
          shrinkWrap: true,
          children: state.searchVendorProfileList
              .map((e) => Text(e.isLike.toString()))
              .toList(),
        );
      }),
    );
  }
}
