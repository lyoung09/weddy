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
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:weddynew/common/cache_image_network.dart';
import 'package:weddynew/common/widget_factory.dart';

class StaggeredImageGrid extends StatelessWidget {
  final List<String> imageList;

  const StaggeredImageGrid({super.key, required this.imageList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WidgetFactory().createDefaultAppBar(context, title: '판매사 이미지'),
        body: Padding(
            padding: const EdgeInsets.all(6),
            child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: const [
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: imageList.length,
                (context, index) =>
                    ImageTile(url: imageList[index], index: index),
              ),
            )));
  }
}

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.url,
    required this.index,
  }) : super(key: key);

  final String url;
  final int index;

  @override
  Widget build(BuildContext context) {
    return FullScreenWidget(
      child: Hero(
        tag: index,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: buildCacheNetworkImage(width: 0, height: 0, url: url),
        ),
      ),
    );
  }
}
