import 'package:flutter/material.dart';

import '../../network/http_request.dart';

class ImageDetailPage extends StatelessWidget {
  final String _imageURL;

  ImageDetailPage(this._imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Hero(tag: _imageURL, child: Image.network(_imageURL))),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                print('点击了收藏');
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
                HttpRequest.download(_imageURL);
              },
            )
          ],
        ),
      ),
    );
  }
}
