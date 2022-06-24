import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/page/home/home_page.dart';
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
    // AmiHomePage.routeName: (ctx) => AmiHomePage(),
  };

  static final String initialRoute = MainPage.routeName;

  // static final RouteFactory generateRoute = (settings) {
  //   if (settings.name == HYDetailPage.routeName) {
  //     return MaterialPageRoute(
  //         builder: (ctx) {
  //           return HYDetailPage(settings.arguments);
  //         }
  //     );
  //   }
  //   return null;
  // };
  //
  // static final RouteFactory unknownRoute = (settings) {
  //   return MaterialPageRoute(
  //       builder: (ctx) {
  //         return HYUnknownPage();
  //       }
  //   );
  // };
}