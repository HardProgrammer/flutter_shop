/// 页面不存在

import 'package:flutter/material.dart';

class NoFoundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NoFoundPageState();
}

class NoFoundPageState extends State<NoFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("页面不存"),
    );
  }
}