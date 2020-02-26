/// 首页
import 'package:flutter/material.dart';
import 'package:shop/page_index.dart';
import 'package:shop/utils/global_utils.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // 页面下标
  int _selectedIndex = 0;

  // 底部导航栏各个可切换页面组
  List<Widget> _bottomNavPages = List();

  @override
  void initState() {
    super.initState();
    _bottomNavPages
      ..add(MapPage())
      ..add(LoginPage())
      ..add(WelcomePage())
      ..add(RegisterPage());
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1125, height: 2436);

    return Scaffold(
      body: _bottomNavPages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(
                Icons.shop,
                color: Colors.white,
              ),
              onPressed: () => _onItemTapped(1),
            ),
            SizedBox(), // 增加一些间隔
            IconButton(
              icon: Icon(
                Icons.school,
                color: Colors.white,
              ),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ),
              onPressed: () => _onItemTapped(3),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        shape: CircularNotchedRectangle(),
      ),

      /// 悬浮按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.phone),
      ),
      // 设置 floatingActionButton 在底部导航栏中间
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // 页面选择器
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
