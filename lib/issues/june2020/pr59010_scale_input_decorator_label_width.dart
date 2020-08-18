import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59010ScaleInputDecoratorLabelWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Label unnecessarily elided'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'When a text field is empty and unfocused, a label will be truncated with ellipsis if it is too long.',
              'When the text field is focused, a floating label will be scaled down by a factor of 0.75, but so is its width. This means the label doesn\'t use available space. This PR fixes this behavior by scaling the label width.'
            ],
          ),
          Description(
            title: 'Details',
            description: [],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.message),
                  prefixIcon: Icon(Icons.message),
                  labelText: 'Some very long text for the TextField label'),
            ),
          )
        ],
      ),
    );
  }
}
