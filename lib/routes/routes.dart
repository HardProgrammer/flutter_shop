/// 路由跳转页面
import 'package:fluro/fluro.dart';
import 'package:shop/routes/route_handlers.dart';

class Routes {
  /// 首页--进入启动页
  static String root = "/";
  /// 404 页面
  static String no_found = "/no_found_page";

  static void configureRoutes(Router router) {
    router.define(no_found,handler: noFoundHandler);

    router.define(root, handler: welcomeHandler);
  }
}
