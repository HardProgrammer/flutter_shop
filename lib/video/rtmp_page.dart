/// 拉流显示

import 'package:flutter/material.dart';
import 'package:fijkplayer/fijkplayer.dart';

class VideoPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => VideoPageState();
}

class VideoPageState extends State<VideoPage> {
  final FijkPlayer player = FijkPlayer();
  String rtmpAddress = "rtmp://58.200.131.2:1935/livetv/hunantv";
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
