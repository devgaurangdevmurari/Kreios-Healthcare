import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoView extends StatelessWidget {
  VideoView({this.videoPlayerController, this.size = 260});
  VideoPlayerController videoPlayerController;
  double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      child: videoPlayerController.value.initialized
          ? ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: double.infinity,
                height: size,
                child: AspectRatio(
                  aspectRatio: videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController),
                ),
              ),
            )
          : SizedBox(),
    );
  }
}
