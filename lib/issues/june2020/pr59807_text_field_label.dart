import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59807TextFieldLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Label unnecessarily elided'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'The label in input decoration was making room for prefix and suffix when calculating its width. However, when label is displayed in the input, prefix and suffix are not, so label was being elided when it didn\'t need to be. This removes them from the width calculation and allows label to take up all the available space.',
            ],
          ),
          Center(
            child: SizedBox(
              width: 300,
              height: 200,
              child: TextField(
                mouseCursor: SystemMouseCursors.grab,
                decoration: const InputDecoration(
                  prefixText: 'The five boxing wizards jump quickly:',
                  labelText: 'My Label',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
