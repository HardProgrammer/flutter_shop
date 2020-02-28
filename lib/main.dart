import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop/home/welcome_page.dart';
import 'package:amap_all_fluttify/amap_all_fluttify.dart';
import 'package:shop/routes/application.dart';
import 'package:shop/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // IOS高德地图Key
  await AmapCore.init('9787418a5e9fc7157e825563e389ef86');
  // 关闭log
  await enableFluttifyLog(false);
  // 强制竖屏
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  //初始化路由
  final router = new Router();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 去除右上角debug图标
      debugShowCheckedModeBanner: false,

      title: 'thinkerShop',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
      //初始化路由
      onGenerateRoute: Application.router.generator,
    );
  }
}
