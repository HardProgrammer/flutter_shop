/// 路由跳转

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:shop/page_index.dart';
import 'package:shop/person/mine_page.dart';

/// 进入欢迎页
var welcomeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return WelcomePage();
});

/// 进入首页
var homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

/// 404页面
var noFoundHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return NoFoundPage();
});

/// 个人中心主页
var mineHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MinePage();
});

/// 我的信息页面
var mineInfoHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MineInfoPage();
});
