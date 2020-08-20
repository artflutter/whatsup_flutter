import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr61136AnimatedAlign extends StatefulWidget {
  Pr61136AnimatedAlign({Key key}) : super(key: key);

  @override
  _Pr61136AnimatedAlignState createState() => _Pr61136AnimatedAlignState();
}

class _Pr61136AnimatedAlignState extends State<Pr61136AnimatedAlign> {
  double align = 2;
  double widthFactor = 3;

  @override
  Widget build(BuildContext context) {
    var alignment;

    switch (align.toInt()) {
      case 1:
        alignment = Alignment.centerLeft;
        break;
      case 2:
        alignment = Alignment.center;
        break;
      case 3:
        alignment = Alignment.centerRight;
        break;
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Align allows developers to customize the `width` and `height` factor, however `AnimatedAlign` does not expose these properties. ',
              'This PR exposes `widthFactor` and `heightFactor` for `AnimatedAlign` and adds the necessary Tween visitors and documentation for both properties.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Move sliders to adjust the alignment and width factor. The borders around sample text shows how width factor affect the available space for alignment',
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
              )),
              child: AnimatedAlign(
                alignment: alignment,
                widthFactor: widthFactor,
                duration: Duration(milliseconds: 300),
                child: Text(
                  'Aligned text',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Align(
                child: Text('Align'),
              ),
              Expanded(
                child: Slider(
                  value: align,
                  min: 1,
                  max: 3,
                  divisions: 2,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  label: '$align',
                  onChanged: (double newValue) {
                    setState(() {
                      align = newValue;
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
                child: Text('Width factor'),
              ),
              Expanded(
                child: Slider(
                  value: widthFactor,
                  min: 0,
                  max: 3,
                  divisions: 6,
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  label: '$widthFactor',
                  onChanged: (double newValue) {
                    setState(() {
                      widthFactor = newValue;
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '$newValue';
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
