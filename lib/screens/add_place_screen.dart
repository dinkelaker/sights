import 'package:flutter/material.dart';

import '../widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    var _titleController;

    return Scaffold(
        appBar: AppBar(
          title: Text('Add a new Sight'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.save),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                        controller: _titleController,
                      ),
                      SizedBox(height: 10,),
                      ImageInput(),
                    ],
                  ),
                ),
              ),
            ),
            RaisedButton.icon(
              icon: Icon(Icons.add),
              label: Text('Add Sight'),
              elevation: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Theme.of(context).accentColor,
              onPressed: () {},
            ),
          ],
        ));
  }
}
