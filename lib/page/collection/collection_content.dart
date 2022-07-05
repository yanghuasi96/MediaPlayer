import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/model/collection_moel.dart';
import 'package:untitled/viewmoedl/favor_view_model.dart';
import '../picture/image_detail.dart';

class CollectionContent extends StatefulWidget {
  int type;
  final CollectionsList _movieList = CollectionsList([],0);
  final CollectionsList _musicList = CollectionsList([],1);
  final CollectionsList _pictureList = CollectionsList([],2);

  @override
  State<CollectionContent> createState() => _collectioncontentState();

  CollectionContent(this.type);

}

class _collectioncontentState extends State<CollectionContent> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Consumer<HYFavorViewModel>(builder: (ctx, items, child) {
      return GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 16 / 9),
        children: List.generate(items.item(widget.type).length, (index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(PageRouteBuilder(pageBuilder: (ctx, anim1, anim2) {
                  return FadeTransition(
                      opacity: anim1, child: ImageDetailPage(items.item(widget.type)[index]));
                }));
              },
              child: Hero(
                tag: items.item(widget.type)[index].imageUrl,
                child: Image.network(
                  items.item(widget.type)[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ));
        }),
      );
    })));
  }
}
