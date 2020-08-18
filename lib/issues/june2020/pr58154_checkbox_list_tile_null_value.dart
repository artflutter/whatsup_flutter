import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr58154CheckboxListTileNullValue extends StatefulWidget {
  @override
  _Pr58154CheckboxListTileNullValueState createState() =>
      _Pr58154CheckboxListTileNullValueState();
}

class _Pr58154CheckboxListTileNullValueState
    extends State<Pr58154CheckboxListTileNullValue> {
  bool checkboxValue;

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
              'Allow null value through tristate property for CheckboxListTile (exactly like Checkbox).',
              'When a tri-state checkbox ([tristate] is true) is tapped, its [onChanged] callback will be applied to true if the current value is false, to null if value is true, and to false if value is null (i.e. it cycles through false => true => null => false when tapped).'
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Press the checkbox to test',
            ],
          ),
          CheckboxListTile(
            title: const Text('Animate Slowly'),
            value: checkboxValue,
            tristate: true,
            onChanged: (bool value) {
              setState(() {
                checkboxValue = value;
              });
            },
            secondary: const Icon(Icons.hourglass_empty),
          )
        ],
      ),
    );
  }
}
