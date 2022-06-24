import 'package:flutter/material.dart';
import 'package:untitled/page/home/home_page.dart';
import 'package:untitled/page/my/my_info.dart';

import '../picture/picture_page.dart';

List<BottomNavigationBarItem> items = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
  const BottomNavigationBarItem(icon: Icon(Icons.picture_in_picture), label: '图片'),
  const BottomNavigationBarItem(icon: Icon(Icons.people), label: '我的')
];

List<Widget> pages = [
  HomePage(),
  PicturePage(),
  MyInfo(),

];
