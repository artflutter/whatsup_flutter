import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr61180SnackBarCustomization extends StatefulWidget {
  @override
  _Pr61180SnackBarCustomizationState createState() =>
      _Pr61180SnackBarCustomizationState();
}

class _Pr61180SnackBarCustomizationState
    extends State<Pr61180SnackBarCustomization> {
  double margin = 0;

  double width;

  double padding = 0;

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

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
              'Adjust the settings and open SnackBar',
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Align(
                child: Text('Margin'),
              ),
              Expanded(
                child: Slider(
                  value: margin,
                  min: 0,
                  max: 50,
                  divisions: 49,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  label: '$margin',
                  onChanged: (double newValue) {
                    setState(() {
                      margin = newValue;
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '$newValue';
                  },
                ),
              )
            ],
          ),
          Row(
            children: [
              Align(
                child: Text('Padding'),
              ),
              Expanded(
                child: Slider(
                  value: padding,
                  min: 0,
                  max: 50,
                  divisions: 49,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  label: '$padding',
                  onChanged: (double newValue) {
                    setState(() {
                      padding = newValue;
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '$newValue';
                  },
                ),
              )
            ],
          ),
          Builder(
            builder: (context) => RaisedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(milliseconds: 400),
                  content: Text('Yay! A SnackBar!'),
                  margin: EdgeInsets.all(margin),
                  padding: EdgeInsets.all(padding),
                  behavior: SnackBarBehavior.floating,
                );

                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text('Open SnackBar!'),
            ),
          )
        ],
      ),
    );
  }
}
