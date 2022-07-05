import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'initialize_items.dart';

class MainPage extends StatefulWidget {
  static const String routeName = '/';

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('首页'),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: pages
        ));
  }
}
