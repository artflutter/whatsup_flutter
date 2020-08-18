import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr54128MaterialScrollbarIsAlwaysShown extends StatefulWidget {
  @override
  _Pr54128MaterialScrollbarIsAlwaysShownState createState() =>
      _Pr54128MaterialScrollbarIsAlwaysShownState();
}

class _Pr54128MaterialScrollbarIsAlwaysShownState
    extends State<Pr54128MaterialScrollbarIsAlwaysShown> {
  ScrollController _scrollController;
  bool isAlwaysShown = true;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll isAlwaysShown'),
      ),
      body: Scrollbar(
        isAlwaysShown: isAlwaysShown,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 1200.0,
            child: Column(
              children: [
                Description(
                  title: 'Description',
                  description: [
                    'fix `isAlwaysShown` material scrollbar.dart',
                    'CupertinoScrollbar works fine but in material Scrollbar the didChangeDependencies not calling after a dependency(isAlwaysShown) change. However, this progress works fine in CupertinoScrollbar so that I update didUpdateWidget as following'
                  ],
                ),
                Description(
                  title: 'Details',
                  description: [
                    'Press button to toggle state',
                  ],
                ),
                RaisedButton(
                  onPressed: () =>
                      setState(() => isAlwaysShown = !isAlwaysShown),
                  child: Text('Toggle scrollbar visibility'),
                )
              ],
            ),
          ),
        ),
      ),
//      Column(
//        children: [

//          RaisedButton(
//            onPressed: () {
//              showTimePicker(
//                context: context,
//                initialTime: TimeOfDay.now(),
//              );
//            },
//            child: Text('Show time picker'),
//          )
//        ],
//      ),
    );
  }
}
