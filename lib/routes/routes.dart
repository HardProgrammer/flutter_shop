/// 路由跳转页面
import 'package:fluro/fluro.dart';
import 'package:shop/routes/route_handlers.dart';

class Routes {
  /// 首页--进入启动页
  static String root = "/";

  /// 进入主页面
  static String home = "/home_page";

  /// 404 页面
  static String no_found = "/no_found_page";

  /// 个人中心主页
  static String mine = "/mine_page";

  /// 我的信息页面
  static String mine_info = "/mine_info_page";


  static void configureRoutes(Router router) {
    router.define(no_found, transitionType: TransitionType.inFromRight, handler: noFoundHandler);

    router.define(root, transitionType: TransitionType.inFromRight,handler: welcomeHandler);

    router.define(home, transitionType: TransitionType.inFromRight,handler: homeHandler);

    router.define(mine, transitionType: TransitionType.inFromRight,handler: mineHandler);

    router.define(mine_info, transitionType: TransitionType.inFromRight,handler: mineInfoHandler);

  }
}
