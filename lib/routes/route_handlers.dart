/// 路由跳转

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:shop/page_index.dart';

/// 进入欢迎页
var welcomeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return WelcomePage();
});

/// 404页面
var noFoundHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return NoFoundPage();
});
