
import 'package:test2/VW.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';


class VideoApp extends StatefulWidget {
  @override
  _VideoApp createState() => _VideoApp();

  }
  class _VideoApp extends State<VideoApp> {
    final asset = 'assets/videos/video_2.mp4';
    VideoPlayerController controller;

  @override
  void initState(){
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  VideoPlayerWidget(
    );
  }
}