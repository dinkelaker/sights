import 'package:flutter/material.dart';

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
              Navigator.of(context).popAndPushNamed(AddPlaceScreen.routeName);
            },
          ),
        ],
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
