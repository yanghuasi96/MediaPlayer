import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatefulWidget {
  static const String routeName = '/info';

  const MyInfo({Key? key}) : super(key: key);

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),
        body: Card(
          elevation: 20,
          shadowColor: Colors.blue,
          margin: EdgeInsets.all(30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  child: Image.asset(
                    'images/img.png',
                    width: 100,
                    height: 100,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                Text('迪西')
              ],
            ),
          ),
        ));
  }
}
