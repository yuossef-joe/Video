import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../VW.dart';
import '../main.dart';

class NetworkPlayerWidget extends StatefulWidget {
  @override
  _NetworkPlayerWidgetState createState() => _NetworkPlayerWidgetState();
  }
class _NetworkPlayerWidgetState extends State<NetworkPlayerWidget> {
  final textController = TextEditingController();
  VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network(textController.text)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }
  void createVideo() {
    if (controller == null) {
      controller = VideoPlayerController.network(
          "https://r3---sn-vgqsknez.googlevideo.com/videoplayback?source=youtube&mime=video%2Fmp4&itag=22&key=cms1&requiressl=yes&beids=%5B9466592%5D&ratebypass=yes&fexp=9466586,23724337&ei=g3jiWvfCL4O_8wScopaICA&signature=43C209DD37289D74DB39A9BBF7BC442EAC049426.14B818F50F4FA686C13AF5DD1C2A498A9D64ECC9&fvip=3&pl=16&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&ip=54.163.50.118&lmt=1524616041346022&expire=1524813027&ipbits=0&dur=1324.768&id=o-AJvotKVxbyFDCz5LQ1HWQ8TvNoHXWb2-86a_50k3EV0f&rm=sn-p5qyz7s&req_id=e462183e4575a3ee&ipbypass=yes&mip=96.244.254.218&redirect_counter=2&cm2rm=sn-p5qe7l7s&cms_redirect=yes&mm=34&mn=sn-vgqsknez&ms=ltu&mt=1524791367&mv=m")
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (controller.value.isPlaying) {
        controller.pause();
      } else {
        controller.initialize();
        controller.play();
      }
    }
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            VideoPlayerWidget(controller: controller),
          ],
        ),
      );
}
