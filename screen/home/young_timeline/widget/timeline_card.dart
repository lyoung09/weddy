import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:keyboard_hider/keyboard_hider.dart';
import 'package:lottie/lottie.dart';
import 'package:weddynew/common/widget_factory.dart';
import 'package:weddynew/resources/Colors.dart';
import 'package:weddynew/screen/home/young_timeline/widget/modal.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';
import '../../../../utils/horizontal_popup.dart';
import '../../../../utils/round_checkbox.dart';

import '../item_bloc/timeline_item_bloc.dart';
import '../item_bloc/timeline_item_event.dart';
import '../item_bloc/timeline_item_state.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset(string) async {
  return await rootBundle.loadString(string);
}

class TimelineCardWidget extends StatelessWidget {
  final int groupId;
  final TimelineItem item;
  final TimelineItemState state;

  const TimelineCardWidget({
    super.key,
    required this.item,
    required this.groupId,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TimelineItemBloc>();

    return Card(
      elevation: 3,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .85,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            RoundedCheckBox(
                isRound: false,
                size: 25,
                checkedColor: state.isNotEnabled == true
                    ? Colors.transparent
                    : ColorItems.primary,
                checkedWidget: state.isNotEnabled == true
                    ? Images.getIcon('Vector.png')
                    : Images.getIcon('Icon_check.png'),
                border: Border.all(
                  width: 1.5,
                  color: state.isNotEnabled == true
                      ? ColorItems.secondarySpanishGray
                      : state.isChecked == true
                          ? ColorItems.primary
                          : Colors.black,
                ),
                uncheckedColor: Colors.transparent,
                uncheckedWidget: state.isNotEnabled == true
                    ? Images.getIcon('Vector.png')
                    : null,
                isChecked: item.isChecked,
                onTap: (value) {
                  if (state.isNotEnabled == true || item.isNotEnabled) {
                    return null;
                  } else {
                    item.isChecked = !item.isChecked;
                    context.read<TimelineItemBloc>().add(IsCheckedEvent(
                        index: item.itemId,
                        timeline: item,
                        groupId: groupId,
                        isChecked: item.isChecked));
                  }
                }),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 6,
              child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(60.0))),
                      backgroundColor: Colors.white,
                      context: context,
                      useSafeArea: true,
                      isScrollControlled: true,
                      builder: (context) => SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.85,
                          child: Column(
                            children: [
                              // const SizedBox(
                              //   height: 40,
                              // ),
                              Expanded(
                                  flex: 6,
                                  child: item.isMandatory == true
                                      ? Stack(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(40),
                                                        topRight:
                                                            Radius.circular(
                                                                40)),
                                                image: DecorationImage(
                                                  fit: BoxFit.fitWidth,
                                                  image: NetworkImage(
                                                    item.logoImageUrl.trim(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15, right: 15),
                                                child: Images.getIcon(
                                                    'Label_mandatory.png'),
                                              ),
                                            )
                                          ],
                                        )
                                      : Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(40),
                                                      topRight:
                                                          Radius.circular(40)),
                                              image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: NetworkImage(
                                                  item.logoImageUrl,
                                                ),
                                              )),
                                        )),
                              const SizedBox(
                                height: 32,
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(
                                                top: 10, bottom: 15),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.68,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                color: ColorItems.primary),
                                            child: Text(item.title,
                                                style: TextItems.title2
                                                    .copyWith(
                                                        color: Colors.white,
                                                        fontSize: 24))),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            alignment: Alignment.centerLeft,
                                            child: Text(item.todo,
                                                style: TextItems.title5.copyWith(
                                                    color: ColorItems
                                                        .secondarySpanishGray,
                                                    fontSize: 14))),
                                        Container(
                                            alignment: Alignment.center,
                                            child: Text(item.description,
                                                style: TextItems.body2.copyWith(
                                                    color:
                                                        ColorItems.spaceCadet,
                                                    fontSize: 14))),
                                      ],
                                    ),
                                  )),
                            ],
                          )),
                    );
                  },
                  child: Text(item.title)),
            ),
            const Spacer(),
            PopupMenuButton<String>(
                offset: const Offset(0, -40),
                icon: const Icon(Icons.more_horiz_outlined),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                onSelected: (value) {},
                itemBuilder: (_) {
                  return [
                    PopupMenuWidget(
                      height: 40.0,
                      icon: const Icon(Icons.more_horiz),
                      child: SizedBox(
                        width: item.isWeddyService == true ? 180 : 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [_popupMenuWidget(context, bloc)],
                        ),
                      ),
                    )
                  ];
                }),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuWidget _popupMenuWidget(
      BuildContext context, TimelineItemBloc bloc) {
    return PopupMenuWidget(
        height: 40.0,
        icon: const Icon(Icons.more_horiz),
        child: Row(children: [
          PopupMenuWidget(
            height: 40.0,
            icon: const Icon(Icons.more_horiz),
            child: Row(
              children: [
                InkWell(
                  hoverColor: ColorItems.wildBlueYonder,
                  focusColor: ColorItems.wildBlueYonder,
                  onTap: () {
                    modalWidget(context, bloc);
                  },
                  child: Column(
                    children: [
                      Images.getIcon('Icon_memo.png'),
                      const Text("메모")
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Center(child: Images.getIcon('Divider2.png')),
                const SizedBox(
                  width: 15,
                ),
                item.isWeddyService == true
                    ? InkWell(
                        hoverColor: ColorItems.wildBlueYonder,
                        focusColor: ColorItems.wildBlueYonder,
                        onTap: () {
                          Navigator.pushNamed(context, 'ProductDetailPage');
                        },
                        child: Column(
                          children: const [Icon(Iconsax.shop5), Text("판매사")],
                        ),
                      )
                    : const SizedBox(
                        width: 0,
                      ),
                item.isWeddyService == true
                    ? const VerticalDivider(
                        indent: 5,
                        endIndent: 5,
                        color: Colors.black,
                        thickness: 1,
                      )
                    : const SizedBox(
                        width: 0,
                      ),
                item.isWeddyService == true
                    ? Images.getIcon('Divider2.png')
                    : const SizedBox(width: 0),
                item.isWeddyService == true
                    ? const SizedBox(
                        width: 15,
                      )
                    : const SizedBox(width: 0),
                InkWell(
                  hoverColor: ColorItems.wildBlueYonder,
                  focusColor: ColorItems.wildBlueYonder,
                  onTap: () {
                    item.isNotEnabled = !item.isNotEnabled;
                    context.read<TimelineItemBloc>().add(NotEnabledEvent(
                          timeline: item,
                          groupId: groupId,
                          notUsing: item.isNotEnabled,
                          index: item.itemId,
                        ));

                    Navigator.pop(context);
                  },
                  child: Column(
                    children: [
                      item.isNotEnabled == true
                          ? Images.getIcon('Icon_Proceed.png')
                          : Images.getIcon('Icon_notProceed.png'),
                      Text(state.isNotEnabled == true ? '사용 안 함' : '사용'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }

  modalWidget(BuildContext context, TimelineItemBloc bloc) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.white,
        context: context,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (context) => ModalWidget(
            key: UniqueKey(),
            item: item,
            groupId: groupId,
            bloc: bloc,
            memo: state.memo,
            context: context));
  }
}
