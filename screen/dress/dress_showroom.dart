/*
 *
 * Weddy CONFIDENTIAL
 * _____________________________________________________________________
 *
 * [2021] - [2030] Weddy
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Weddy and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Weddy and its suppliers and
 * may be covered by Korea and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Weddy.
 */
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weddynew/common/cache_image_network.dart';
import 'package:weddynew/common/dummy_data.dart';
import 'package:weddynew/common/image_factory.dart';
import 'package:weddynew/common/screen_common_widget.dart';
import 'package:weddynew/common/shimmer_loading.dart';
import 'package:weddynew/model/dress_image.dart';
import 'package:weddynew/model/vendor_service.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weddynew/screen/product/product_details.dart';

import '../../common/widget_factory.dart';

class DressShowroomScreen extends StatefulWidget {
  const DressShowroomScreen({Key? key}) : super(key: key);

  @override
  DressShowroomScreenState createState() => DressShowroomScreenState();
}

class DressShowroomScreenState extends State<DressShowroomScreen> {
  final widgetFactory = WidgetFactory();
  final shimmerLoading = ShimmerLoading();
  final imageFactory = ImageFactory();
  final screenCommonWidget = ScreenCommonWidget();

  List<BrideDressImage> dressItems = []; // bookmark image list

  bool loading = true;
  Timer? _timerDummy;

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
        appBar: widgetFactory.createEmptyAppBar(context),
        backgroundColor: Colors.white,
        body: RefreshIndicator(
            onRefresh: refreshData,
            backgroundColor: Colors.white,
            child: (loading == true)
                ? shimmerLoading.buildShimmerContent()
                : SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        buildGridView(),
                      ],
                    ))));
  }

  Widget buildItem(BrideDressImage brideDressImage) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DressImageDetails(brideDressImage: brideDressImage)));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            child: buildCacheNetworkImage(
                height: 0, width: 0, url: brideDressImage.imageUrl),
          ),
        ));
  }

  Widget buildGridView() {
    return Card(
        elevation: 0,
        child: GridView.count(
            shrinkWrap: true,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            crossAxisCount: 2,
            children: List.generate(dressItems.length, (index) {
              return buildItem(dressItems[index]);
            })));
  }

  Future refreshData() async {
    setState(() {
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

    var images = [
      'https://source.unsplash.com/random/?wedding',
      'https://source.unsplash.com/random/?food',
      'https://source.unsplash.com/random/?city',
      'https://source.unsplash.com/random/?flower',
      'https://source.unsplash.com/random/?dress',
      'https://source.unsplash.com/random/?winter',
      'https://source.unsplash.com/random/?fall',
      'https://source.unsplash.com/random/?sea',
      'https://source.unsplash.com/random/?bride',
      'https://source.unsplash.com/random/?building',
      'https://source.unsplash.com/random/?color',
    ];

    dressItems.clear();

    Random random = Random();
    List<VendorService> serviceProductItems = DummyData.getProductData();
    int k = 1;
    for (int i = 0; i < serviceProductItems.length; i++) {
      for (int j = 0; j < 10; j++) {
        k++;
        dressItems.add(BrideDressImage(
          imageId: k,
          vendorService: serviceProductItems[i],
          imageUrl: images[random.nextInt(images.length)],
          numOfLikes: random.nextInt(10000),
        ));
      }
    }
  }
}

class DressImageDetails extends StatelessWidget {
  final BrideDressImage brideDressImage;

  const DressImageDetails({super.key, required this.brideDressImage});

  @override
  Widget build(BuildContext context) {
    // show heart icon button, number of likes, vendor name, price
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.white,
        body: Stack(children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: buildCacheNetworkImage(
                    width: double.infinity,
                    height: double.infinity,
                    url: brideDressImage.imageUrl),
              )),
          Positioned(
            bottom: 50,
            right: 10,
            child: IconButton(
                iconSize: 48,
                onPressed: () {},
                icon: const Icon(Iconsax.heart,
                    color: Colors.redAccent, size: 24)),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: IconButton(
                iconSize: 48,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Iconsax.close_circle5,
                    color: Colors.redAccent, size: 24)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Center(
                    child: ElevatedButton(
                        child: const Text(
                          "판매사 세부 정보",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailScreen(
                                        vendorService:
                                            brideDressImage.vendorService,
                                        isVisibleFloatingButton: false,
                                      )));
                        })),
              ),
            ],
          ),
        ]));
  }
}
