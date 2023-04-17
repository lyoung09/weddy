import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:weddynew/resources/Colors.dart';
import 'package:weddynew/screen/home/category/detail/video/video_thumbnail.dart';
import '../../../../../apis/biz/app_biz.pb.dart';

class VideoWidget extends StatefulWidget {
  final List<PromotionVideo> videoList;
  const VideoWidget({super.key, required this.videoList});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  // late VideoPlayerController _controller;
  int? currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  void dispose() {
    super.dispose();
    //_controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.videoList.isEmpty
        ? const SizedBox(
            width: 0,
          )
        : SizedBox(
            height: 260,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                          scrollDirection: Axis.horizontal,
                          scrollPhysics: BouncingScrollPhysics(),
                          autoPlay: false,
                          padEnds: false,
                          aspectRatio: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          viewportFraction: 1),
                      itemCount: widget.videoList.length,
                      itemBuilder: (context, count, index) =>
                          ThumbnailVideoWidget(
                            url: widget.videoList[count].videoUrl,
                          )),
                ),
                const SizedBox(
                  height: 15,
                ),
                DotsIndicator(
                  decorator: DotsDecorator(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      activeColor: ColorItems.primary,
                      color: ColorItems.platinumRose,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      activeSize: const Size(10, 10)),
                  dotsCount: widget.videoList.length,
                  position:
                      currentIndex == null ? 0.0 : currentIndex!.toDouble(),
                ),
              ],
            ),
          );
  }
}
