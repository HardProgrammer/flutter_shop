/// 拉流显示

import 'package:flutter/material.dart';
import 'package:fijkplayer/fijkplayer.dart';

class VideoPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => VideoPageState();
}

class VideoPageState extends State<VideoPage> {
  final FijkPlayer player = FijkPlayer();
  String rtmpAddress = "rtmp://video.witbee.cn/live/stream1?token=c708dce603462cbf0a764d6e30969d9d&videoId=1&userId=1&key=281a36a7f8f34ba7a42a95637ec73003";
  @override
  void initState() {
    super.initState();
    player.setDataSource(rtmpAddress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Fijkplayer Example")),
        body: Container(
          alignment: Alignment.center,
          child: FijkView(
            player: player,
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }
}
