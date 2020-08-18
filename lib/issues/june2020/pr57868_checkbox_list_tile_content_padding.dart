import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr57868CheckboxListTileContentPadding extends StatefulWidget {
  Pr57868CheckboxListTileContentPadding({Key key}) : super(key: key);

  @override
  _Pr57868CheckboxListTileContentPaddingState createState() =>
      _Pr57868CheckboxListTileContentPaddingState();
}

class _Pr57868CheckboxListTileContentPaddingState
    extends State<Pr57868CheckboxListTileContentPadding> {
  double padding = 10;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox list tile tristate'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Exposes contentPadding property of ListTile so that users can modify the default contentPadding.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Adjust padding with slider',
            ],
          ),
          CheckboxListTile(
            title: const Text('Animate Slowly'),
            contentPadding: EdgeInsets.all(padding),
            value: checkboxValue,
            onChanged: (bool value) {
              setState(() {
                checkboxValue = value;
              });
            },
            secondary: const Icon(Icons.hourglass_empty),
          ),
          Slider(
              value: padding,
              min: 0,
              max: 100.0,
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.black,
              label: '$padding',
              onChanged: (double newValue) {
                setState(() {
                  padding = newValue;
                });
              },
              semanticFormatterCallback: (double newValue) {
                return '$newValue';
              })
        ],
      ),
    );
  }
}
