import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'collection_content.dart';

class Collections extends StatefulWidget {
  static const String routeName = "/collections";

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections>
    with SingleTickerProviderStateMixin {
  final List<Tab> _tabList = <Tab>[
    Tab(
      icon: Icon(Icons.movie),
      text: '视频',
    ),
    Tab(
      icon: Icon(Icons.music_video),
      text: '音频',
    ),
    Tab(
      icon: Icon(Icons.picture_in_picture),
      text: '图片',
    )
  ];

  //定义三个页面
  final  _pageWidgetList = [
    CollectionContent(0),
    CollectionContent(1),
    CollectionContent(2),
  ];

  late TabController _controller;
  var _currentTopTabIndex;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _tabList.length, vsync: this);
    _controller.addListener(() {
      _currentTopTabIndex = _controller.index;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
        bottom: TabBar(
          tabs: _tabList,
          controller: _controller,
        ),
      ),
      body: TabBarView(
        children: _pageWidgetList,
        controller: _controller,
      ),
    );
  }
}

