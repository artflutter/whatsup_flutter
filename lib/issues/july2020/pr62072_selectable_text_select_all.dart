import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr62072SelectableTextSelectAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'The text selection handles weren\'t showing after pressing "Select All" in a SelectableText widget. This PR makes them show up.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Press and hold on the demo text until "Select All" bubble appear',
            ],
          ),
          SizedBox(height: 8),
          SelectableText(
            'Some text to select',
            style: TextStyle(fontSize: 19),
          )
        ],
      ),
    );
  }
}
