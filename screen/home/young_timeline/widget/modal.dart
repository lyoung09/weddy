import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/biz/app_biz.pb.dart';

import '../../../../resources/Colors.dart';
import '../../../../resources/Images.dart';

import '../item_bloc/timeline_item_bloc.dart';
import '../item_bloc/timeline_item_event.dart';

class ModalWidget extends StatefulWidget {
  final TimelineItem item;
  final int groupId;
  final TimelineItemBloc bloc;
  final String memo;
  final BuildContext context;
  const ModalWidget(
      {super.key,
      required this.item,
      required this.context,
      required this.groupId,
      required this.bloc,
      required this.memo});

  @override
  State<ModalWidget> createState() => _ModalWidgetState();
}

class _ModalWidgetState extends State<ModalWidget> {
  final FocusNode focusnode = FocusNode();

  @override
  Widget build(context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.item.title,
                style: const TextStyle(color: ColorItems.spaceCadet),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
            ],
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            key: widget.key,
            focusNode: focusnode,

            decoration: const InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(color: ColorItems.secondarySpanishGray),
                hintText: '내용을 입력하세요'),
            controller: widget.bloc.memoController,
            //controller: controller,
            autofocus: true,
            maxLength: 50,
            onSaved: (val) {
              widget.bloc.memoController.text += val!;
            },
          ),
          const SizedBox(height: 10),
          Images.getIcon('Divider_products.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    deleteDialog(context, widget.bloc);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: ColorItems.spaceCadet,
                  ),
                  child: const Text("삭제",
                      style:
                          TextStyle(color: ColorItems.secondarySpanishGray))),
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: ColorItems.spaceCadet,
                  ),
                  onPressed: () {
                    widget.bloc.add(MemoEvent(
                      timeline: widget.item,
                      groupId: widget.groupId,
                      memo: widget.bloc.memoController.text,
                      index: widget.item.itemId,
                    ));
                    Navigator.of(context).pop();

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      backgroundColor: ColorItems.spaceCadet,
                      content: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          ClipRect(
                            child: Container(
                              alignment: Alignment.center,
                              color: ColorItems.primary,
                              child: Images.getIcon('Icon_check.png'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "메모가 저장 되었습니다",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ));
                  },
                  child: const Text(
                    "저장",
                    style: TextStyle(color: ColorItems.spaceCadet),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  deleteDialog(BuildContext context, TimelineItemBloc bloc) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18.0))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Text(
              "삭제하시겠습니까?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorItems.spaceCadet,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorItems.weddyNeutral,
                      fixedSize: const Size(72, 28),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  child: const Text('취소',
                      style: TextStyle(color: ColorItems.secondarySpaceCadet)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorItems.spaceCadet,
                    fixedSize: const Size(72, 28),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                onPressed: () {
                  widget.bloc.memoController.text = '';
                  bloc.add(MemoEvent(
                    timeline: widget.item,
                    groupId: widget.groupId,
                    memo: widget.bloc.memoController.text,
                    index: widget.item.itemId,
                  ));
                  Navigator.of(context).pop();
                },
                child: const Text('삭제', style: TextStyle(color: Colors.white)),
              ),
              const Spacer(),
            ])
          ],
        ),
      ),
    );
  }
}
