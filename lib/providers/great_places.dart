import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:sights/helpers/db_helper.dart';

import '../models/place.dart';

class GreatPlaces extends ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return _items;
  }

  void addSight(
    String title,
    File image,
  ) {
    final newSight = Place(
      id: DateTime.now().toIso8601String(),
      image: image,
      location: null,
      title: title,
    );
    _items.add(newSight);
    notifyListeners();
    DBHelper.insert(
      'sights',
      {
        'id': newSight.id,
        'title': newSight.title,
        'image': newSight.image.path,
      },
    );
  }
}
