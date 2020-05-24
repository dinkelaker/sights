import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:sights/providers/great_places.dart';

import './add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sights'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
          ),
        ],
      ),
      body: Consumer<GreatPlaces>(
          child: Center(
            child: const Text('Got no place yet. start add some!'),
          ),
          builder: (ctxt, greatPlaces, child) => greatPlaces.items.length <= 0
              ? child
              : ListView.builder(
                  itemCount: greatPlaces.items.length,
                  itemBuilder: (ctxt, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(greatPlaces.items[i].image),
                    ),
                    title: Text(greatPlaces.items[i].title),
                    onTap: () {},
                  ),
                )),
    );
  }
}
