import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/page/collection/collections.dart';
import 'package:untitled/page/movie/movie_player.dart';
import 'package:untitled/router/routers.dart';

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
        body: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 5,
              left: 20,
              right: 20,
              child: SizedBox(
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  margin: const EdgeInsets.all(5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'images/img.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Text('迪西'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Card(
            //   elevation: 20,
            //   shadowColor: Colors.blue,
            //   margin: const EdgeInsets.all(5),
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   child: _infoItem(),
            // ),
            Positioned(
              left: 20,
              right: 20,
              top: 200,
              child: Container(
                child: _infoItem(),
                // child: ListView.builder(
                //   itemCount: 3,
                //   itemBuilder: (BuildContext context, int index) {
                //     return _infoItem();
                //   },
                // ),
              )
            )
          ],
        ));
  }
}

class _infoItem extends StatefulWidget {
  const _infoItem({Key? key}) : super(key: key);

  @override
  State<_infoItem> createState() => _InfoItemState();
}

class _InfoItemState extends State<_infoItem> {
  @override
  Widget build(BuildContext context) {
    return Card(child: ListTile(
      leading: Icon(Icons.account_circle),
      title: Text('我的收藏'),
      subtitle: Text('subtitle'),
      trailing: Icon(Icons.account_box),
      dense: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      contentPadding: EdgeInsets.all(10),
      enabled: true,
      onTap: () {
        // Navigator.of(context).pushNamed(Collections.routeName);
        Navigator.of(context).pushNamed(VideoScreen.routeName);
      },
      onLongPress: () {
        // ToastUtil.showToast('onLongPress');
      },
      selected: true,
    ),);
  }
}
