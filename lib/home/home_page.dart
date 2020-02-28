/// 首页
import 'package:flutter/material.dart';
import 'package:shop/page_index.dart';
import 'package:shop/res/dimen.dart';

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
      ..add(VideoPage())
      ..add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
              backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              title: Text('商城'),
              backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('课程'),
              backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('我的'),
              backgroundColor: Colors.lightBlue),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }

  // 页面选择器
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
