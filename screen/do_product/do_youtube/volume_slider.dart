// Copyright 2020 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:auto_size_text/auto_size_text.dart';

class VolumeSlider extends StatelessWidget {
  final _volume = ValueNotifier<int>(100);

  VolumeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const AutoSizeText(
          "Volume",
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        Expanded(
          child: ValueListenableBuilder<int>(
            valueListenable: _volume,
            builder: (context, volume, _) {
              return Slider(
                inactiveColor: Colors.transparent,
                activeColor: Theme.of(context).colorScheme.onSurface,
                value: volume.toDouble(),
                min: 0.0,
                max: 100.0,
                divisions: 10,
                label: '$volume',
                onChanged: (value) {
                  _volume.value = value.round();
                  context.ytController.setVolume(volume);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
