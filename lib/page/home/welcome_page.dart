import 'dart:async';

/// 屏幕启动页
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

/// 欢迎页面
class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 屏幕适配
    ScreenUtil.init(context, designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(

      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[

        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
