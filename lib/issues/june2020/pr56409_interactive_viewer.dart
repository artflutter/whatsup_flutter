import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr56409InteractiveViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final columnCount = 15;
    final rowCount = 15;

    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive viewer widget'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'New widget - InteractiveViewer. Any widget tree passed as its child will be able to be panned and zoomed by user gestures.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'This is a table ${columnCount}x$rowCount try to pan or zoom to text the functionality',
            ],
          ),
          Expanded(
            child: Container(
              child: InteractiveViewer(
                  constrained: false,
                  child: Table(
                    columnWidths: <int, TableColumnWidth>{
                      for (int column = 0; column < columnCount; column++)
                        column: const FixedColumnWidth(300.0),
                    },
                    children: <TableRow>[
                      for (int row = 0; row < rowCount; row++)
                        TableRow(
                          children: <Widget>[
                            for (int column = 0; column < columnCount; column++)
                              Container(
                                height: 100,
                                color: row % 2 + column % 2 == 1
                                    ? Colors.red.withOpacity(0.5)
                                    : Colors.green.withOpacity(0.5),
                              ),
                          ],
                        ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
