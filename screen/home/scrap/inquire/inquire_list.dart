import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/base/bloc/bloc_state.dart';
import 'package:weddynew/di/di_module.dart';
import 'package:weddynew/screen/home/scrap/inquire/bloc/inquire_bloc.dart';
import 'package:weddynew/screen/home/scrap/inquire/bloc/inquire_event.dart';
import 'package:weddynew/screen/home/scrap/inquire/inquire_expansionTile.dart';

import '../../../../apis/category/category_data.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../../../../utils/custom_string.dart';
import 'bloc/inquire_state.dart';

class InquireView extends StatelessWidget {
  const InquireView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          InquireBloc(repository: getIt.get())..add(InitInquiryEvent()),
      child: BlocBuilder<InquireBloc, InquireState>(builder: (context, state) {
        return state.status.isLoading
            ? Text('')
            : state.userConsultingInfo.isEmpty
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
                      Text('상담 신청 내역이 없어요.',
                          style: TextItems.title5.copyWith(
                              color: ColorItems.spaceCadet,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '총 ',
                                  style: TextItems.title8.copyWith(
                                      color: ColorItems.spaceCadet,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              TextSpan(
                                  text: state.userConsultingInfo.length
                                      .toString(),
                                  style: TextItems.title8.copyWith(
                                      color: ColorItems.carolinaBlue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              TextSpan(
                                  text: '건',
                                  style: TextItems.title8.copyWith(
                                      color: ColorItems.spaceCadet,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                            ])),
                            const Spacer(),
                            Center(
                              child: Text('* 최근 3개월 상담 신청 내역만 조회할 수 있습니다.',
                                  style: TextItems.heading4.copyWith(
                                      color: ColorItems.secondarySpanishGray,
                                      fontSize: 12)),
                            ),
                            const SizedBox(
                              width: 24,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Images.getIcon('Divider.png'),
                        state.userConsultingInfo.isEmpty
                            ? const SizedBox()
                            : BlocProvider.value(
                                value: BlocProvider.of<InquireBloc>(context),
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: state.userConsultingInfo
                                      .map((e) =>
                                          consultingItem(e, state, context))
                                      .toList(),
                                ),
                              )
                      ],
                    ),
                  );
      }),
    );
  }

  Widget consultingItem(
      UserConsultingInfo info, InquireState state, BuildContext context) {
    String vendorList = '';

    info.consultingList.forEach((element) => vendorList += element.vendorName);

    vendorList.length > 7
        ? vendorList = vendorList.substring(0, 7) + '...'
        : null;

    return BlocProvider.value(
        value: BlocProvider.of<InquireBloc>(context),
        child: InquireExpansionTile(
            info: info, state: state, vendorlist: vendorList));
  }
}
