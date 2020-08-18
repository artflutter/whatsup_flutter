import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr58201MaterialButtonDisabledElevation extends StatefulWidget {
  @override
  _Pr58201MaterialButtonDisabledElevationState createState() =>
      _Pr58201MaterialButtonDisabledElevationState();
}

class _Pr58201MaterialButtonDisabledElevationState
    extends State<Pr58201MaterialButtonDisabledElevation> {
  double disabledElevation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material button disabled elevation'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Pass the disabledElevation parameter of MaterialButton into its super widget.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Drag the slider to change the disabled elevation',
            ],
          ),
          Slider(
              value: disabledElevation,
              min: 0,
              max: 100.0,
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.black,
              label: '$disabledElevation',
              onChanged: (double newValue) {
                setState(() {
                  disabledElevation = newValue;
                });
              },
              semanticFormatterCallback: (double newValue) {
                return '$newValue';
              }),
          MaterialButton(
            onPressed: null,
            disabledElevation: disabledElevation,
            disabledColor: Colors.black12,
            child: Text('Sample material button'),
          )
        ],
      ),
    );
  }
}
