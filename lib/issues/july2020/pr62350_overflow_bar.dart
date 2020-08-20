import 'package:flutter/material.dart';

import '../../description.dart';

class Pr62350OverflowBar extends StatefulWidget {
  @override
  _Pr62350OverflowBarState createState() => _Pr62350OverflowBarState();
}

class _Pr62350OverflowBarState extends State<Pr62350OverflowBar> {
  double padding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'A widget that lays out its [children] in a row unless they "overflow" the available horizontal space, in which case it lays them out in a column instead.',
              'Provides most of the same features as ButtonBar, without being tangled up with the Material ButtonTheme',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Move the slide to adjust the padding and check how the OverflowRow behaves.',
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: OverflowBar(
              spacing: 16,
              overflowAlignment: OverflowBarAlignment.end,
              children: <Widget>[
                OutlineButton(child: Text('Button A'), onPressed: () {}),
                OutlineButton(child: Text('Button B'), onPressed: () {}),
                OutlineButton(child: Text('Button C'), onPressed: () {}),
              ],
            ),
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
