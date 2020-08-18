import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59586DatePickerKeyboardNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date picker keyboard navigation'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Added support for navigating the day grid in the Material Date Picker with just the keyboard. Normal Tab/Shift-Tab navigation can be used to bring focus to the date grid. Once inside the grid, the following keyboard shortcuts are supported:',
              'Tab =>	move focus to next element outside grid',
              'Shift-Tab =>	move focus to previous element outside grid',
              'Left Arrow => move focus to previous day',
              'Right Arrow =>	move focus to next day',
              'Up Arrow => move focus to previous week',
              'Down Arrow => move focus to next week',
              'Enter / Space =>	select the currently focused day',
            ],
          ),
          RaisedButton(
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2015, 8),
                  lastDate: DateTime(2101));
            },
            child: Text('Show date picker'),
          )
        ],
      ),
    );
  }
}
