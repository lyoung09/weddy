
import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../common/dummy_data.dart';
import '../../common/image_factory.dart';
import '../../common/local_utils.dart';
import '../../common/screen_common_widget.dart';
import '../../common/shimmer_loading.dart';
import '../../common/widget_factory.dart';
import '../../model/vendor_bookmark.dart';
import '../../model/vendor_service.dart';
import '../do_product/detail/product_details_page.dart';

class VendorBookmarkPage extends StatefulWidget {
  const VendorBookmarkPage({Key? key}) : super(key: key);

  static const String routeName = "/vendor_bookmark";

  @override
  VendorBookmarkPageState createState() => VendorBookmarkPageState();
}

class VendorBookmarkPageState extends State<VendorBookmarkPage> {
  final widgetFactory = WidgetFactory();
  final imageFactory = ImageFactory();
  final screenCommonWidget = ScreenCommonWidget();

  bool loading = true;
  Timer? _timerDummy;

  List<VendorBookmark> bookMarkItems = [];

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  void dispose() {
    _timerDummy?.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widgetFactory.createDefaultAppBar(context, title: '판매사 관심 목록'),
        backgroundColor: Colors.white,
        body: RefreshIndicator(
            onRefresh: refreshData,
            backgroundColor: Colors.white,
            child: (loading == true)
              ? ShimmerLoading().buildShimmerContent()
              : SingleChildScrollView(
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) =>
                    widgetFactory.styler.listDivider,
                    itemCount: bookMarkItems.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = bookMarkItems[index];
                      // remove item
                      return buildDismissibleItem(item, index);
                    }
                )
            )));
  }

  Widget buildDismissibleItem(VendorBookmark item, index) {
    return Dismissible(
        background: Container(
            color: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('삭제하기',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900)),
                ],
              ),
            )),
        confirmDismiss: (value) async {
          bool? result = await screenCommonWidget.showConfirmDialog(context,
              message: '삭제 하시겠습니까?');

          return result;
        },
        key: Key(item.itemId.toString()),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          setState(() {
            bookMarkItems.removeAt(index);
          });
          // Remove the item from the data source.
        },
        child: buildItem(item));
  }

  Widget buildItem(VendorBookmark bookmark) {
    return Padding(
        padding: const EdgeInsets.all(4),
        child: ListTile(
            title: Row(
              children: [
                AutoSizeText(
                  bookmark.vendorService.serviceCategory.displayName,
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(width: 6),
                AutoSizeText(bookmark.vendorService.vendorName,
                    style: Theme.of(context).textTheme.bodyText2, maxLines: 1),
              ],
            ),
            subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: imageFactory.categoryImageIcon(
                                categoryCode:
                                    bookmark.vendorService.serviceCategory),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                AutoSizeText(
                                  bookmark.vendorService.comments,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  softWrap: false,
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const SizedBox(height: 4),
                                AutoSizeText(
                                  '북마크 일자 ${LocalUtils.getCurrentDate()}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ])),
                        ]),
                  ],
                )),
            trailing: IconButton(
              icon: const Icon(Iconsax.arrow_right_1, color: Colors.lightBlue),
              onPressed: () {
                FocusScope.of(context).unfocus();
                Navigator.pushNamed(
                    context,
                    ProductDetailPage.routeName,
                    arguments: bookmark.vendorService.id
                );
              }
            )));
  }

  Future refreshData() async {
    setState(() {
      bookMarkItems.clear();
      loading = true;
      _getData();
    });
  }

  void _getData() {
    _timerDummy = Timer(const Duration(seconds: 1), () {
      setState(() {
        loading = false;
      });
    });

    List<VendorService> serviceProductItems = DummyData.getProductData();
    for (int i = 0; i < serviceProductItems.length; i++) {
      bookMarkItems.add(VendorBookmark(
          itemId: i + 1,
          vendorService: serviceProductItems[i],
          dateTime: DateTime.now(),
          imageUrl: '',
          isEnabled: true));
    }
  }
}