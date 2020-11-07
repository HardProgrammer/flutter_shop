import 'dart:async';

/// 屏幕启动页
import 'package:flutter/material.dart';

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

    /// 主页面
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
