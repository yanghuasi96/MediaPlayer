import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/model/collection_moel.dart';
import 'package:untitled/viewmoedl/favor_view_model.dart';

import '../../network/http_request.dart';

class ImageDetailPage extends StatelessWidget {

  CollectionsItem _collectionsItem;

  ImageDetailPage(this._collectionsItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Hero(tag: _collectionsItem.imageUrl, child: Image.network(_collectionsItem.imageUrl))),
            Row(
              children: [
                Consumer<HYFavorViewModel>(
                  builder: (ctx, favorVM, child) {
                    // 1.判断是否是收藏状态
                    final iconData = favorVM.isFavor(2,_collectionsItem)
                        ? Icons.favorite
                        : Icons.favorite_border;
                    final iconColor = favorVM.isFavor(2,_collectionsItem)
                        ? Colors.red
                        : Colors.black;
                    return IconButton(
                      icon: Icon(
                        iconData,
                        color: iconColor,
                      ),
                      onPressed: () {
                        favorVM.handleItem(2,_collectionsItem);
                      },
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    print('点击了分享');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.download),
                  onPressed: () {
                    HttpRequest.download(_collectionsItem.imageUrl);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
