import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/great_places.dart';
import './screens/add_place_screen.dart';
import './screens/place_detail_screen.dart';
import './screens/places_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
          title: 'Sights',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: PlacesListScreen.routeName,
          routes: {
            AddPlaceScreen.routeName: (_) => AddPlaceScreen(),
            PlaceDetailScreen.routeName: (_) => PlaceDetailScreen(),
            PlacesListScreen.routeName: (_) => PlacesListScreen(),
          }),
    );
  }
}

