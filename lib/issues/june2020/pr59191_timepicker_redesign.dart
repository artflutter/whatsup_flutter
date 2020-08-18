import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59191TimePickerRedesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redesign time picker'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Redesigns the time picker to match the upcoming Material spec.',
            ],
          ),
          RaisedButton(
            onPressed: () {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
            },
            child: Text('Show time picker'),
          )
        ],
      ),
    );
  }
}
