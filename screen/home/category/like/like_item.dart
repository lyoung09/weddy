import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/screen/home/category/like/bloc/like_bloc.dart';
import 'package:weddynew/screen/home/category/like/bloc/like_event.dart';
import 'package:weddynew/screen/home/util/check_modal.dart';

import '../../../../apis/biz/app_biz.pb.dart';
import '../../../../resources/Images.dart';
import '../detail/vendor_detail_page.dart';
import 'bloc/like_state.dart';

// class LikeItemWidget extends StatelessWidget {
//   final Bookmark bookmark;
//   final List<CategoryModel> cateogoryList;
//   final Map<int, bool> likeList;
//   const LikeItemWidget(
//       {super.key,
//       required this.bookmark,
//       required this.cateogoryList,
//       required this.likeList});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<LikeListBloc, LikeListState>(
//         builder: (bloccontext, blocstate) {
//       return GestureDetector(
//         onTap: () {
//           // Navigator.pushNamed(context, CategoryDetail.routeName,
//           //     arguments: CategoryDetail(
//           //         indexId: bookmark.vendorProfileId.toInt(),
//           //         category: bookmark.vendorServiceCode));
//         },
//         child: Container(
//             child: Row(
//           children: [
//             Image.network(
//               cateogoryList
//                   .firstWhere((element) =>
//                       element.vendorServiceCode ==
//                       bookmark.vendorServiceCode.toInt())
//                   .vendorIconImageUrl,
//               width: 40,
//               height: 40,
//             ),
//             Text(bookmark.vendorName),
//             GestureDetector(
//               onTap: () {
//                 bool value = blocstate.listLike
//                     .containsKey(bookmark.vendorProfileId.toInt());
//                 value = !value;
//                 bloccontext.read<LikeListBloc>().add(RemoveLikeEvent(
//                     index: bookmark.vendorProfileId.toInt(), value: value));
//                 debugPrint(value.toString());
//                 debugPrint(blocstate.likeList.toString());
//               },
//               child: BlocProvider.value(
//                 value: BlocProvider.of<LikeListBloc>(context),
//                 child: blocstate.listLike
//                         .containsKey(bookmark.vendorProfileId.toInt())
//                     ? Images.getIcon('Icon_vendors_like.png')
//                     : Images.getIcon('Icon_vendors_like_inactive.png'),
//               ),
//             ),
//             //Images.getIcon('Icon_vendors_like.png')
//           ],
//         )),
//       );
//     });
//   }
// }

class LikeItemWidget extends StatefulWidget {
  final Bookmark bookmark;
  final List<CategoryModel> cateogoryList;
  final Map<int, bool> likeList;
  const LikeItemWidget(
      {super.key,
      required this.bookmark,
      required this.cateogoryList,
      required this.likeList});

  @override
  State<LikeItemWidget> createState() => _LikeItemWidgetState();
}

class _LikeItemWidgetState extends State<LikeItemWidget> {
  late bool value;
  @override
  void initState() {
    value =
        widget.likeList.containsKey(widget.bookmark.vendorProfileId.toInt());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LikeListBloc, LikeListState>(
        builder: (bloccontext, blocstate) {
      return Container(
        padding: const EdgeInsets.only(left: 18, right: 18),
        height: 72,
        // alignment: Alignment.center,
        child: Card(
          elevation: 5,
          semanticContainer: true,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(children: [
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pushNamed(context, CategoryDetail.routeName,
                    arguments: CategoryDetail(
                        popIndex: 1,
                        indexId: widget.bookmark.vendorProfileId.toInt(),
                        category: blocstate.categoryList.firstWhere(
                          (element) =>
                              element.vendorServiceCode ==
                              widget.bookmark.vendorServiceCode.toInt(),
                        )));
              },
              child: Image.asset(
                widget.cateogoryList
                    .firstWhere((element) =>
                        element.vendorServiceCode ==
                        widget.bookmark.vendorServiceCode.toInt())
                    .vendorIconImageUrl,
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                flex: 8,
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pushNamed(context, CategoryDetail.routeName,
                          arguments: CategoryDetail(
                              popIndex: 1,
                              indexId: widget.bookmark.vendorProfileId.toInt(),
                              category: blocstate.categoryList.firstWhere(
                                  (element) =>
                                      element.vendorServiceCode ==
                                      widget.bookmark.vendorServiceCode
                                          .toInt())));
                    },
                    child: Text(widget.bookmark.vendorName))),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {
                value == false
                    ? null
                    : showDialog(
                        context: context,
                        builder: (context) => ModalCustom().twoAnswer(
                            '선택하신 판매사를 MY 좋아요에서삭제하시겠습니까?', '취소', '확인', context,
                            firstFuction: () => {Navigator.pop(bloccontext)},
                            secondFunction: () {
                              bloccontext.read<LikeListBloc>().add(
                                  RemoveLikeEvent(
                                      index: widget.bookmark.vendorProfileId
                                          .toInt(),
                                      value: value));
                              Navigator.pop(context);
                              setState(() => value = !value);
                            }),
                      );
              },
              child: BlocProvider.value(
                value: BlocProvider.of<LikeListBloc>(context),
                child: value
                    ? Images.getIcon('Icon_vendors_like.png')
                    : Images.getIcon('Icon_vendors_like_inactive.png'),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            //Images.getIcon('Icon_vendors_like.png')
          ]),
        ),
      );
    });
  }
}
