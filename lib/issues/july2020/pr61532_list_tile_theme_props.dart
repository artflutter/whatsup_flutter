import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr61532ListTileThemeProps extends StatefulWidget {
  @override
  _Pr61532ListTileThemePropsState createState() =>
      _Pr61532ListTileThemePropsState();
}

class _Pr61532ListTileThemePropsState extends State<Pr61532ListTileThemeProps> {
  int selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTileTheme(
        tileColor: Colors.grey,
        selectedTileColor: Colors.red,
        child: Column(
          children: [
            Description(
              title: 'Description',
              description: [
                'Adds tileColor and selectedTileColor in ListTileTheme to customize ListTile background at theme level.',
              ],
            ),
            Description(
              title: 'Details',
              description: [
                'Click any tile to change the selection',
              ],
            ),
            Card(
              child: ListTile(
                selected: selected == 0,
                onTap: () => setState(
                    () => selected == 0 ? selected = null : selected = 0),
                title: Text('Some tile title 1'),
              ),
            ),
            Card(
              child: ListTile(
                selected: selected == 1,
                onTap: () => setState(
                    () => selected == 1 ? selected = null : selected = 1),
                title: Text('Some tile title 2'),
              ),
            ),
            Card(
              child: ListTile(
                selected: selected == 2,
                onTap: () => setState(
                    () => selected == 2 ? selected = null : selected = 2),
                title: Text('Some tile title 3'),
              ),
            ),
            Card(
              child: ListTile(
                selected: selected == 3,
                onTap: () => setState(
                    () => selected == 3 ? selected = null : selected = 3),
                title: Text('Some tile title 4'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
