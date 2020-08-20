import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr61778UpdatedIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Additional icons, new icon styles (outline, rounded, sharp), and the latest Roboto and RobotoCondensed fonts. update_icons.dart has been updated for additional names and to prevent regressions.',
              'Icon tree shaking has landed for iOS and Android (#56633). There is no icon tree shaking on web (#57181) so there will be an increase in bundle size for that platform.',
              'NOTE: The fonts repo has changed a bit. The wiki on updating material fonts needs to be updated as well as the go link for the internal hosting of the icons font which is now being custom made for us by the Google Fonts team.',
            ],
          ),
          ListTile(
            title: Text('New Icon'),
            subtitle: Text('person_remove'),
            trailing: Icon(
              Icons.person_remove,
              size: 55,
            ),
          ),
          ListTile(
            title: Text('New Icon'),
            subtitle: Text('drag_indicator'),
            trailing: Icon(
              Icons.drag_indicator,
              size: 55,
            ),
          ),
          ListTile(
            title: Text('New Icon'),
            subtitle: Text('logout'),
            trailing: Icon(
              Icons.logout,
              size: 55,
            ),
          ),
          ListTile(
            title: Text('Outlined icons'),
            trailing: Icon(
              Icons.person_remove_alt_1_outlined,
              size: 55,
            ),
          ),
          ListTile(
            title: Text('Set of rounded edges'),
            trailing: Icon(
              Icons.directions_car_rounded,
              size: 55,
            ),
          ),
          ListTile(
            title: Text('Set of sharp edges'),
            trailing: Icon(
              Icons.directions_car_sharp,
              size: 55,
            ),
          ),
        ],
      ),
    );
  }
}
