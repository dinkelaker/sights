import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
            ),
            child: _storedImage != null
                ? Image.file(
                    _storedImage,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )
                : Text('Yet no picture taken.')),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: FlatButton.icon(
            onPressed: () {},
            label: Text('Take picture'),
            textColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.camera),
          ),
        )
      ],
    );
  }
}
