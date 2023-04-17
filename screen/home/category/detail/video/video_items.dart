import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../resources/Colors.dart';
import 'package:path_provider/path_provider.dart';

class ShowVideoWidget extends StatefulWidget {
  final VideoPlayerController videoPlayerController1;
  const ShowVideoWidget({super.key, required this.videoPlayerController1});

  @override
  State<ShowVideoWidget> createState() => _ShowVideoWidgetState();
}

class _ShowVideoWidgetState extends State<ShowVideoWidget> {
  ChewieController? _chewieController1;

  @override
  initState() {
    super.initState();
    if (mounted) {
      initChe();
    }
  }

  @override
  dispose() {
    _chewieController1 != null ? _chewieController1!.dispose() : null;
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  initChe() {
    _chewieController1 = ChewieController(
      videoPlayerController: widget.videoPlayerController1,
      aspectRatio: widget.videoPlayerController1.value.aspectRatio,
      autoPlay: false,
      errorBuilder: (context, errorMessage) {
        return Text(
          'error',
          style: TextStyle(color: Colors.white),
        );
      },
      looping: true,
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      customControls: const CupertinoControls(
        backgroundColor: Colors.transparent,
        iconColor: Colors.transparent,
        showPlayButton: true,
      ),
      allowFullScreen: true,
      allowedScreenSleep: false,
      autoInitialize: true,
    );

    _chewieController1!.play();
  }

  double videoContainerRatio = 0.5;

  double getScale() {
    double videoRatio = widget.videoPlayerController1.value.aspectRatio;

    if (videoRatio < videoContainerRatio) {
      return videoContainerRatio / videoRatio;
    } else {
      return videoRatio / videoContainerRatio;
    }
  }

  @override
  Widget build(BuildContext context) {
    return _chewieController1 == null
        ? const SizedBox()
        : Transform.scale(
            key: UniqueKey(),
            scale: getScale(),
            child: AspectRatio(
                aspectRatio: getScale(),
                child: Chewie(controller: _chewieController1!)));
  }
}
