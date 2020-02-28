/// 地图展示页

import 'package:amap_all_fluttify/amap_all_fluttify.dart';
import 'package:flutter/material.dart';
import 'package:shop/res/dimen.dart';
import 'package:shop/utils/global_utils.dart';

class MapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  AmapController _controller;
  Location _location;
  TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = new TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController?.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.topCenter, children: <Widget>[
      /// 地图展示
      AmapView(
        showZoomControl: false,

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

      /// 搜索框
      Positioned(
        left: RDimen.dpW(38),
        right: RDimen.dpW(120),
        child: SafeArea(
          child: Container(
              width: RDimen.dpW(1000),
              child: TextField(
                controller: _searchController,
                maxLength: 30,
                maxLengthEnforced: true,
                maxLines: 1,
                decoration: InputDecoration(
                    //控制最大字符是否显示
                    counterText: "",
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "请输入地址",
                    hintStyle:
                        TextStyle(color: Colors.grey, fontSize: RDimen.sp(50))),
              )),
        ),
      ),

      /// 遮盖物和悬浮窗
      Positioned(
        bottom: RDimen.dpH(30),
        left: RDimen.dpW(30),
        child: Container(
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
                    strokeColor: Colors.transparent,
                    fillColor: Colors.transparent);
              }
            },
          ),
        ),
      ),
    ]));
  }
}
