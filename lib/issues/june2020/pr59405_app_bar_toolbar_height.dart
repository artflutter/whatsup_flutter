import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59405AppBarToolbarHeight extends StatefulWidget {
  @override
  _Pr59405AppBarToolbarHeightState createState() =>
      _Pr59405AppBarToolbarHeightState();
}

class _Pr59405AppBarToolbarHeightState
    extends State<Pr59405AppBarToolbarHeight> {
  double toolbarHeight = kToolbarHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: toolbarHeight,
        title: Text('AppBar toolbar height'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Adds a new property toolbarHeight property to customize the AppBar height.'
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'By default AppBar did not have the ability to change the heights. The default AppBar height defined by "kToolbarHeight" and equals $kToolbarHeight',
              //https://stackoverflow.com/questions/51089994/flutter-setting-the-height-of-the-appbar
              'Press +10 or -10 buttons to change the toolbar height by 10'
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('+10'),
                onPressed: () => setState(() => toolbarHeight += 10),
              ),
              RaisedButton(
                child: Text('-10'),
                onPressed: () {
                  if (toolbarHeight > 10) {
                    setState(() => toolbarHeight -= 10);
                  }
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
