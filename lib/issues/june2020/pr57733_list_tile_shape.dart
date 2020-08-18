import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr57733ListTileShape extends StatefulWidget {
  @override
  _Pr57733ListTileShapeState createState() => _Pr57733ListTileShapeState();
}

class _Pr57733ListTileShapeState extends State<Pr57733ListTileShape> {
  double radius = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List tile shape'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Support for applying custom ShapeBorders to the InkWell of ListTiles, so they can match the shapes of their parents, such as when used within Cards.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Select border radius with slider and long press the tile to ses how inkwell shape changes',
            ],
          ),
          Slider(
              value: radius,
              min: 0,
              max: 100.0,
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.black,
              label: '$radius',
              onChanged: (double newValue) {
                setState(() {
                  radius = newValue;
                });
              },
              semanticFormatterCallback: (double newValue) {
                return '$newValue';
              }),
          Card(
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              onTap: () {},
              title: Text('Dummy title'),
            ),
          )
        ],
      ),
    );
  }
}
