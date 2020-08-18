import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr58037SwitchListTileControlAffinity extends StatefulWidget {
  @override
  _Pr58037SwitchListTileControlAffinityState createState() =>
      _Pr58037SwitchListTileControlAffinityState();
}

class _Pr58037SwitchListTileControlAffinityState
    extends State<Pr58037SwitchListTileControlAffinity> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchListTile controlAffinity'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Adds controlAffinity property to change the position of Switch.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Press to juggle the switch around',
            ],
          ),
          SwitchListTile(
            value: value,
            title: Text('Should it stay leading?'),
            controlAffinity: value
                ? ListTileControlAffinity.leading
                : ListTileControlAffinity.trailing,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
          )
        ],
      ),
    );
  }
}
