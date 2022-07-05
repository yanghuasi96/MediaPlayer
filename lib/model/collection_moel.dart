import 'package:untitled/page/collection/collections.dart';

class CollectionsList{
  List<CollectionsItem> _item;
  int _type;//视频0，音频1，图片2


  CollectionsList(this._item, this._type);

  int get type => _type;

  set type(int value) {
    _type = value;
  }

  List<CollectionsItem> get item => _item;

  set item(List<CollectionsItem> value) {
    _item = value;
  }
}


class CollectionsItem{
  String _title;
  String _playUrl;
  String _imageUrl;
  bool _isFavor;

  CollectionsItem(this._title, this._playUrl, this._imageUrl, this._isFavor);

  bool get isFavor => _isFavor;

  set isFavor(bool value) {
    _isFavor = value;
  }

  String get imageUrl => _imageUrl;

  set imageUrl(String value) {
    _imageUrl = value;
  }

  String get playUrl => _playUrl;

  set playUrl(String value) {
    _playUrl = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}