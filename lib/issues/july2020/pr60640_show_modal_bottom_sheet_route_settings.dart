import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr60640ShowModalBottomSheetRouteSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Extends the functionality of the `showModalBottomSheet` function to allow user to assign the routeSettings: RouteSettings attribute.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Press button to open modal bottom sheet',
            ],
          ),
          SizedBox(height: 8),
          RaisedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                routeSettings: RouteSettings(
                    name: 'popup_route_name',
                    arguments: {'someArg': 'WhatsUpFlutter'}),
                builder: (BuildContext context) {
                  final Map<String, String> settings =
                      ModalRoute.of(context).settings.arguments;
                  return Container(
                    height: 150,
                    child: Center(
                        child: Text(
                            'BottomSheet - ${settings["someArg"].toString()}')),
                  );
                },
              );
            },
            child: Text('Open Up!'),
          ),
        ],
      ),
    );
  }
}
