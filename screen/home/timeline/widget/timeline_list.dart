import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/image_factory.dart';
import '../../../../common/screen_common_widget.dart';
import '../../../../common/service_category_enum.dart';
import '../../../../model/timeline_model.dart';

class TimelineListWidget extends StatefulWidget {
  final WeddingTimeLine weddingTimeLine;

  const TimelineListWidget({Key? key, required this.weddingTimeLine});

  @override
  State<TimelineListWidget> createState() => _TimelineListWidgetState();
}

class _TimelineListWidgetState extends State<TimelineListWidget> {
  @override
  void initState() {
    super.initState();
  }

  final screenCommonWidget = ScreenCommonWidget();
  final imageFactory = ImageFactory();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.weddingTimeLine.timelineGrouplist.length,
        itemBuilder: (context, count) =>
            buildItem(widget.weddingTimeLine.timelineGrouplist[count]));
  }

  Widget buildItem(TimeLineGroup timelineGroup) {
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

  Widget createTimelineItem(TimeLineItem item) {
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
