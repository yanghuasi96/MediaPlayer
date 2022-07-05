import 'package:flutter/material.dart';

import '../model/collection_moel.dart';

class HYFavorViewModel extends ChangeNotifier {
  final CollectionsList _items = CollectionsList([], 0);

  void addItem(int type, CollectionsItem meal) {
    _items.type = type;
    _items.item.add(meal);
    notifyListeners();
  }

  void removeItem(int type, CollectionsItem meal) {
    if (_items.type == type) {
      _items.item.remove(meal);
    }
    notifyListeners();
  }

  void handleItem(int type, CollectionsItem item) {
    if (isFavor(type, item)) {
      removeItem(type, item);
    } else {
      addItem(type, item);
    }
  }

  bool isFavor(int type, CollectionsItem item) {
    return _items.item.contains(item);
  }

  List<CollectionsItem> item(int type) {
    if (_items.type == type) {
      return _items.item;
    }
    return [];
  }
}
