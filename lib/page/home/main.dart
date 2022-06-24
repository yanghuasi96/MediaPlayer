//
// import 'package:flutter/material.dart';
// import 'package:untitled/network/home_request.dart';
// import 'package:untitled/network/http_request.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Download Test'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   void _download() {
//     final stream = Stream.fromIterable('Hello World!'.codeUnits);
//     // download(stream, 'hello.txt');
//     HttpRequest.download('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2F07%2F3a%2F19%2F073a190fbb85b9823fc8b337b10c448d.jpeg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1658552070&t=d0873bab88f12bae7f17bdde6f89e497');
//   }
//   ///PermissionGroup.storage 对应的是
//   ///android 的外部存储 （External Storage）
//   ///ios 的Documents` or `Downloads`
//   // checkPermissFunction() async {
//   //   if (Theme.of(context).platform == TargetPlatform.android) {
//   //     ///安卓平台中 checkPermissionStatus方法校验是否有储存卡的读写权限
//   //     PermissionStatus permission = await PermissionHandler()
//   //         .checkPermissionStatus(PermissionGroup.storage);
//   //     if (permission != PermissionStatus.granted) {
//   //       ///无权限那么 调用方法 requestPermissions 申请权限
//   //       Map<PermissionGroup, PermissionStatus> permissions =
//   //       await PermissionHandler()
//   //           .requestPermissions([PermissionGroup.storage]);
//   //       ///校验用户对权限申请的处理
//   //       if (permissions[PermissionGroup.storage] == PermissionStatus.granted) {
//   //         return true;
//   //       }
//   //     } else {
//   //       return true;
//   //     }
//   //   } else {
//   //     return true;
//   //   }
//   //   return false;
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const <Widget>[
//             Text(
//               'Click the FAB to download.',
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _download,
//         tooltip: 'Download',
//         child: const Icon(Icons.download),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }