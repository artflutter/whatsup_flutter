import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr58593SliverAppBarCollapsedHeight extends StatefulWidget {
  @override
  _Pr58593SliverAppBarCollapsedHeightState createState() =>
      _Pr58593SliverAppBarCollapsedHeightState();
}

class _Pr58593SliverAppBarCollapsedHeightState
    extends State<Pr58593SliverAppBarCollapsedHeight> {
  double collapsedHeight = 100;
  double expandedHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Stack(
          children: [
            CustomScrollView(
              primary: true,
              slivers: <Widget>[
                SliverAppBar(
                  title: const Text('AppBar Title'),
                  floating: false,
                  pinned: false,
                  collapsedHeight: collapsedHeight,
                  expandedHeight: expandedHeight,
                  snap: false,
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 1200.0,
                    child: Column(
                      children: [
                        Description(
                          title: 'Description',
                          description: [
                            'Add the collapsedHeight param to the SliverAppBar, allowing for users to set the minimum height when it is collapsed.'
                          ],
                        ),
                        Description(
                          title: 'Details',
                          description: [
                            'Press any button to adjust the `collapsedHeight` - black bar shows the actual position when the collapse should start'
                          ],
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            RaisedButton(
                              child: Text('+25'),
                              onPressed: () {
                                if (collapsedHeight + 25 <= expandedHeight)
                                  setState(() => collapsedHeight += 25);
                              },
                            ),
                            RaisedButton(
                              child: Text('-25'),
                              onPressed: () {
                                if (collapsedHeight - 25 >= kToolbarHeight)
                                  setState(() => collapsedHeight -= 25);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: kToolbarHeight,
              child: SafeArea(
                child: Container(
                  height: collapsedHeight - kToolbarHeight,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
