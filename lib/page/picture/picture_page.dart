import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/collection_moel.dart';

import 'image_detail.dart';

class PicturePage extends StatefulWidget {
  static const String routeName = '/picture';

  const PicturePage({Key? key}) : super(key: key);

  @override
  State<PicturePage> createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 16 / 9),
        children: List.generate(20, (index) {
          final imageURL = "https://picsum.photos/500/500?random=$index";
          return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(PageRouteBuilder(pageBuilder: (ctx, anim1, anim2) {
                  return FadeTransition(
                      opacity: anim1, child: ImageDetailPage(CollectionsItem('','',imageURL,false)));
                }));
              },
              child: Hero(
                tag: imageURL,
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                ),
              ));
        }),
      ),
    ));
  }
}
