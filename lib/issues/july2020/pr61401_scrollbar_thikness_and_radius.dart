import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr61401ScrollbarThicknessAndRadius extends StatefulWidget {
  @override
  _Pr61401ScrollbarThicknessAndRadiusState createState() =>
      _Pr61401ScrollbarThicknessAndRadiusState();
}

class _Pr61401ScrollbarThicknessAndRadiusState
    extends State<Pr61401ScrollbarThicknessAndRadius> {
  double thickness = 5;

  double radius = 2;

  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        controller: _scrollController,
        isAlwaysShown: true,
        thickness: thickness,
        radius: Radius.circular(radius),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            height: 2000,
            child: Column(
              children: [
                Description(
                  title: 'Description',
                  description: [
                    'Adds thickness and radius arguments to Scrollbar and CupertinoScrollbar, to allow callers to override the default thickness and radius when desired.',
                  ],
                ),
                Description(
                  title: 'Details',
                  description: [
                    'Move the slide to adjust the thickness and radius',
                  ],
                ),
                Slider(
                  value: thickness,
                  min: 5,
                  max: 50.0,
                  divisions: 15,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  label: '$thickness',
                  onChanged: (double newValue) {
                    setState(() {
                      thickness = newValue;
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '$newValue';
                  },
                ),
                Slider(
                  value: radius,
                  min: 2,
                  max: 20.0,
                  divisions: 9,
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
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
