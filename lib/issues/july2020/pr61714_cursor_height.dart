import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr61714CursorHeight extends StatefulWidget {
  @override
  _Pr61714CursorHeightState createState() => _Pr61714CursorHeightState();
}

class _Pr61714CursorHeightState extends State<Pr61714CursorHeight> {
  double height = 5;

  double width = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'This PR adds the ability to customize cursor height for Cupertino and Material text fields (as well as EditableText and SelectableText).',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Move the slide to adjust the padding and check how the OverflowRow behaves.',
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorHeight: height,
              cursorWidth: width,
            ),
          ),
          Slider(
            value: height,
            min: 5,
            max: 50.0,
            divisions: 15,
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            label: '$height',
            onChanged: (double newValue) {
              setState(() {
                height = newValue;
              });
            },
            semanticFormatterCallback: (double newValue) {
              return '$newValue';
            },
          ),
          Slider(
            value: width,
            min: 2,
            max: 20.0,
            divisions: 9,
            activeColor: Colors.red,
            inactiveColor: Colors.black,
            label: '$width',
            onChanged: (double newValue) {
              setState(() {
                width = newValue;
              });
            },
            semanticFormatterCallback: (double newValue) {
              return '$newValue';
            },
          ),
        ],
      ),
    );
  }
}
