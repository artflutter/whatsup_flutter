import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr62337HighContrastTheming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'This PR introduces the concept of high contrast themes to the Material library. It includes the following changes.',
              'Expose 2 additional parameters to MaterialApp to allow for specifying high contrast light and dark themes',
              'Expose 2 additional ColorScheme constructors that provide default material baseline colors that respect a higher contrast ratio.'
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Enable `high contrast` mode in your phone accessibility setting to see the result',
            ],
          ),
        ],
      ),
    );
  }
}
