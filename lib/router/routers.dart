import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/page/collection/collections.dart';
import 'package:untitled/page/home/home_page.dart';
import 'package:untitled/page/movie/movie_player.dart';
import 'package:untitled/page/my/my_info.dart';
import 'package:untitled/page/picture/picture_page.dart';

import '../page/home/detail_movie.dart';
import '../page/main/main_page.dart';

class MainRouter{


  static final Map<String,WidgetBuilder> mainRouters = {
    MainPage.routeName: (ctx) => MainPage(),
    HomePage.routeName: (ctx) => HomePage(),
    PicturePage.routeName: (ctx) => PicturePage(),
    MyInfo.routeName: (ctx) => MyInfo(),
    MovieDetail.routeName: (ctx) => MovieDetail(),
    Collections.routeName: (ctx) => Collections(),
    VideoScreen.routeName: (ctx) => VideoScreen(),
    // AmiHomePage.routeName: (ctx) => AmiHomePage(),
  };

  static const String initialRoute = MainPage.routeName;

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}