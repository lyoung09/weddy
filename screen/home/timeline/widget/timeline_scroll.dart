import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../common/image_factory.dart';
import '../../../../common/screen_common_widget.dart';
import '../../../../common/service_category_enum.dart';
import '../../../../model/timeline_group.dart';
import '../../../../model/timeline_item.dart';

class TimeLineScrollWidget extends StatefulWidget {
  final List<TimelineGroup> timeLineGroupList;
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPostionsListener;
  const TimeLineScrollWidget(
      {super.key,
      required this.timeLineGroupList,
      required this.itemPostionsListener,
      required this.itemScrollController});

  @override
  State<TimeLineScrollWidget> createState() => _TimeLineScrollWidgetState();
}

class _TimeLineScrollWidgetState extends State<TimeLineScrollWidget> {
  final screenCommonWidget = ScreenCommonWidget();
  final imageFactory = ImageFactory();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => scrollToIndex(3));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.timeLineGroupList.length,
      itemBuilder: (context, index) =>
          buildItem(widget.timeLineGroupList[index]),
      itemScrollController: widget.itemScrollController,
      itemPositionsListener: widget.itemPostionsListener,
    );
  }

  Future scrollToIndex(int index, {bool animation = false}) async {
    final double alignment = 0;

    if (animation) {
      await widget.itemScrollController
          .scrollTo(index: index, duration: const Duration(seconds: 1));
    } else {
      widget.itemScrollController.jumpTo(index: index);
    }
  }

  Widget buildItem(TimelineGroup timelineGroup) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(2.0),
      child: Column(children: [
        ListTile(
            title: AutoSizeText(
              timelineGroup.title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: AutoSizeText(
              timelineGroup.subTitle,
              style: Theme.of(context).textTheme.bodyText2,
            )),
        Padding(
            padding: const EdgeInsets.all(4),
            child: GridView.count(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: List.generate(timelineGroup.items.length, (index) {
                return GestureDetector(
                    onTap: () => {
                          screenCommonWidget.showBottomSheet(context,
                              contents: const Center(
                                  child: Text(
                                      "Add desc text, memo text, status label, date text, calendar button, status button"))),
                        },
                    child: createTimelineItem(timelineGroup.items[index]));
              }),
            )),
      ]),
    );
  }

  Widget createTimelineItem(TimelineItem item) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(2, 2, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                          size: 14,
                          color: item.isMandatory
                              ? Theme.of(context).colorScheme.primary
                              : Colors.white,
                          Iconsax.bookmark5),
                    ],
                  )),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: imageFactory.categoryImageIcon(
                    categoryCode: ServiceCategory.bouquet),
              ),
              const SizedBox(height: 4),
              AutoSizeText(
                item.title,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ));
  }
}
