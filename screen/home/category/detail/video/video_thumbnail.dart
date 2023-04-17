import 'dart:developer';
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:path_provider/path_provider.dart';

import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:weddynew/screen/home/category/detail/video/video_items.dart';

import '../../../../../provider/generic_provider.dart';
import '../../../../../resources/Colors.dart';

class ThumbnailVideoWidget extends StatefulWidget {
  final String url;
  const ThumbnailVideoWidget({super.key, required this.url});

  @override
  State<ThumbnailVideoWidget> createState() => _ThumbnailVideoWidgetState();
}

class _ThumbnailVideoWidgetState extends State<ThumbnailVideoWidget> {
  Uint8List? imageBytes;
  VideoPlayerController? videoPlayerController1;
  bool? click;
  final videoProvider = GenericProvider<Uint8List>();
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _generateThumbnail();
    });
    super.initState();
    click = false;
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    videoPlayerController1 != null ? videoPlayerController1!.dispose() : null;
    imageBytes != null ? imageBytes = null : null;
    super.dispose();
  }

  _generateThumbnail() async {
    final path = (await getTemporaryDirectory()).path;
    try {
      String? fileName = await VideoThumbnail.thumbnailFile(
        video: widget.url,
        thumbnailPath: path,
        imageFormat: ImageFormat.PNG,
        // maxHeight:
      );

      final file = File(fileName!);

      imageBytes = file.readAsBytesSync();

      videoProvider.setValue(imageBytes);
      if (imageBytes != null && imageBytes!.isNotEmpty) {
        await initializePlayer();
      }
    } catch (e) {
      //ㅠㅠㅠ
    }
  }

  Future<void> initializePlayer() async {
    if (mounted) {
      videoPlayerController1 = VideoPlayerController.network(widget.url);
      await videoPlayerController1!.initialize();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GenericProvider.createWidget<Uint8List>(provider: videoProvider,
        (state) {
      return (state.value == null || state.value!.isEmpty) ||
              videoPlayerController1 == null
          ? const SizedBox()
          : click == true && videoPlayerController1 != null
              ? ShowVideoWidget(
                  videoPlayerController1: videoPlayerController1!,
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      click = !click!;
                    });
                  },
                  child: Stack(children: [
                    Container(
                      height: 350,
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(32)),
                        child: Image.memory(
                          state.value!,
                          //height: 350,
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Center(
                        child: InkWell(
                          splashColor: Colors.white, // Splash color
                          onTap: () {
                            setState(() {
                              click = !click!;
                            });
                          },
                          child: Icon(
                            Icons.play_arrow,
                            color: ColorItems.primary,
                            size: 42,
                          ),
                        ),
                      ),
                    )
                  ]),
                );
    });
  }
}
