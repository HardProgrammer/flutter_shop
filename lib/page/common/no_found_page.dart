import 'package:flutter/material.dart';

/// 页面不存在
class NoFoundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NoFoundPageState();
}

class NoFoundPageState extends State<NoFoundPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("页面不存在"),
    );
  }
}