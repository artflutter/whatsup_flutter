import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59641ExpandedDividerColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider color property'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Exposes the dividerColor property of MergeableMaterial to change the color of dividers when ExpansionPanel.isExpanded is false.',
            ],
          ),
          Description(
            title: 'Details',
            description: [],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionPanelList.radio(
              dividerColor: Colors.red,
              children: <ExpansionPanelRadio>[
                ExpansionPanelRadio(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Center(
                      child: Text(isExpanded ? 'B' : 'A',
                          key: const Key('firstKey')),
                    );
                  },
                  body: const SizedBox(height: 100.0),
                  value: 0,
                ),
                ExpansionPanelRadio(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Center(
                      child: Text(isExpanded ? 'D' : 'C',
                          key: const Key('secondKey')),
                    );
                  },
                  body: const SizedBox(height: 100.0),
                  value: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
