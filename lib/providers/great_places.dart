import 'dart:io';

import 'package:flutter/foundation.dart';

import '../models/place.dart';

class GreatPlaces extends ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return _items;
  } 

  void addSight(String title, File image,) {
    final newSight = Place(id: DateTime.now().toIso8601String(), image: image, location: null, title: title, );
    _items.add(newSight);
    notifyListeners();
  }
}