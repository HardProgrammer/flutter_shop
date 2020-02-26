/// 注册页
import 'package:flutter/material.dart';
import 'package:fijkplayer/fijkplayer.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  final FijkPlayer player = FijkPlayer();

  @override
  void initState() {
    super.initState();
    player.setDataSource("rtmp://video.witbee.cn/live/stream1?token=e38b258613faea32975b962152d93e09&videoId=1&userId=1&key=281a36a7f8f34ba7a42a95637ec73003", autoPlay: true);
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
