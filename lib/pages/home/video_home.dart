import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: depend_on_referenced_packages
import 'package:video_player/video_player.dart';

class VideoHome extends StatefulWidget {
  const VideoHome({super.key});

  @override
  State<VideoHome> createState() => _VideoHomeState();
}

class _VideoHomeState extends State<VideoHome> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.network("/assets/cadelga_recap_general.mp4"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: Get.height,
      child: FlickVideoPlayer(flickManager: flickManager),
    );
  }
}
