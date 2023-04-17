import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/screen/profile/bloc/profile_bloc.dart';
import 'package:weddynew/screen/profile/bloc/profile_event.dart';

import '../../../../common/dummy_data.dart';
import '../../../../model/division.dart';
import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';
import '../../../../resources/Text.dart';

class RegionModal extends StatefulWidget {
  final TextEditingController controller;
  const RegionModal({super.key, required this.controller});

  @override
  State<RegionModal> createState() => _RegionModalState();
}

class _RegionModalState extends State<RegionModal> {
  List<Division> cityList = DummyData.getDivisions();

  int? choiceRegion;

  @override
  void initState() {
    super.initState();
    widget.controller.text.isNotEmpty
        ? choiceRegion = cityList
            .firstWhere(
                (element) => element.displayName == widget.controller.text)
            .code
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20),
        height: 320,
        child: ListView(
          children: cityList
              .map((e) => GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        choiceRegion = e.code;
                      });
                      widget.controller.text = e.displayName;
                      //Navigator.pop(context);
                    },
                    child: Container(
                        height: 30,
                        padding: EdgeInsets.only(left: 22),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(e.displayName,
                                    style: TextItems.title8.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: choiceRegion == e.code
                                            ? ColorItems.spaceCadet
                                            : ColorItems
                                                .secondarySpanishGray))),
                            const Spacer(),
                            e.code == choiceRegion
                                ? Images.getIcon('Icon_filter_check.png')
                                : const SizedBox(),
                            const SizedBox(
                              width: 20,
                            )
                          ],
                        )),
                  ))
              .toList(),
        ));
  }
}
