import 'dart:async';

/// 屏幕启动页
import 'package:flutter/material.dart';
import 'package:shop/res/dimen.dart';
import 'package:shop/utils/global_utils.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  Timer _timer;

  /// 倒计时秒数
  int count = 10;

  int downCount = 0;

  @override
  void initState() {
    super.initState();

    /// 开始倒计时
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1125, height: 2436);

    /// 主页面
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          /// 背景图
          Container(),

          /// 跳过按钮--点击页面跳转
          Positioned(
            top: RDimen.dpH(100),
            right: RDimen.dpH(100),
            child: Container(
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // 圆形进度条
                  CircularProgressIndicator(
                    strokeWidth: 2.0,
                    value: downCount / 10,
                    backgroundColor: Colors.blue,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                  ),
                  Center(
                    child: Text(
                      "跳过",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  startTime() async {
    /// 设置启动图生效时间
    var _duration = new Duration(seconds: 1);
    new Timer(_duration, () {
      /// 空等1秒之后再计时
      _timer = new Timer.periodic(const Duration(milliseconds: 1000), (v) {
        count--;
        downCount++;
        if (count == 0) {
          /// 时间结束页面跳转
          _goHome();
        } else {
          setState(() {
            print("倒计时：$count");
          });
        }
      });
      return _timer;
    });
  }

  /// 设置页面跳转
  _goHome() {
    _timer?.cancel();
    print("跳过");
  }

  @override
  void dispose() {
    super.dispose();

    /// 定时器消除
    _timer?.cancel();
  }
}
