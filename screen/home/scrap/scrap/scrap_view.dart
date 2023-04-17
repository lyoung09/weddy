import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/screen/home/scrap/scrap/bloc/scrap_item_bloc.dart';
import 'package:weddynew/screen/home/scrap/scrap/bloc/scrap_item_event.dart';
import 'package:weddynew/screen/home/scrap/scrap/bloc/scrap_item_state.dart';
import 'package:weddynew/screen/home/scrap/scrap/widget/category_tab_widget.dart';

import '../../../../di/di_module.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';

class ScrapWidgetState extends StatelessWidget {
  const ScrapWidgetState({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) =>
          ScrapItemBloc(repository: getIt.get())..add(InitScrapItemEvent()),
      child:
          BlocBuilder<ScrapItemBloc, ScrapItemState>(builder: (context, state) {
        return state.status.isLoading
            ? const Scaffold(
                body: Center(
                    child: CircularProgressIndicator(
                  color: ColorItems.primary,
                )),
              )
            : state.scrapVendorInfoList.isEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(child: Images.getIcon('Graph_notFound_scrap.png')),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('스크랩 신청 내역이 없어요.',
                          style: TextItems.title5.copyWith(
                              color: ColorItems.spaceCadet,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  )
                : BlocProvider.value(
                    value: BlocProvider.of<ScrapItemBloc>(context),
                    child: TabbarWidget(
                        bloc: context.read<ScrapItemBloc>(),
                        tablength: state.scrapVendorInfoList
                            .where(
                                (element) => element.scrapItemList.isNotEmpty)
                            .map((element) => element.vendorServiceCode)
                            .toSet()
                            .length,
                        scrapList: state.scrapVendorInfoList
                            .where(
                                (element) => element.scrapItemList.isNotEmpty)
                            .toList()),
                  );
      }),
    );
  }
}
