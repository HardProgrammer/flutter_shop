/// 地图展示页

import 'package:amap_all_fluttify/amap_all_fluttify.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/global_utils.dart';

class MapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  AmapController _controller;
  Location _location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.topCenter, children: <Widget>[
      /// 地图展示
      AmapView(
        showZoomControl: false,
        mask: Scaffold(
          backgroundColor: Colors.blue,
        ),
        // 地图创建完成回调 (可选)
        onMapCreated: (controller) async {
          _controller = controller;
          _controller.showScaleControl(false);
          _controller.showCompass(false);

          // 如果已经授权获取当前位置
          if (await requestPermission()) {
            final location = await AmapLocation.fetchLocation();
            setState(() => _location = location);
            await controller.showMyLocation(true,
                strokeColor: Colors.transparent, fillColor: Colors.transparent);
          }
        },
      ),

      /// 遮盖物和悬浮窗
      Positioned(
        bottom: 10,
        left: 10,
        child: IconButton(
          icon: Icon(
            Icons.my_location,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () async {
            /// 获取当前信息
            if (await requestPermission()) {
              await _controller.showMyLocation(true,
                  strokeColor: Colors.transparent, fillColor: Colors.transparent);
            }
          },
        ),
      )
    ]));
  }
}
