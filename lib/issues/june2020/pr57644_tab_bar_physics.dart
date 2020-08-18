import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

typedef OnPhysicsChange = void Function(ScrollPhysics physics);

class Pr57644TabBarPhysics extends StatefulWidget {
  @override
  _Pr57644TabBarPhysicsState createState() => _Pr57644TabBarPhysicsState();
}

class _Pr57644TabBarPhysicsState extends State<Pr57644TabBarPhysics>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  ScrollPhysics physics = NeverScrollableScrollPhysics();

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 3);
    _controller.addListener(() {
      FocusScope.of(context).unfocus();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar physics'),
        bottom: TabBar(
          physics: physics,
//              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          isScrollable: true,
          controller: _controller,
          tabs: [
            Tab(text: 'Info'),
            Tab(text: 'Page 2'),
            Tab(text: 'Page 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Page1(
            onPhysics: (updatedPhysics) =>
                setState(() => physics = updatedPhysics),
          ),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  final OnPhysicsChange onPhysics;

  const Page1({Key key, @required this.onPhysics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Description(
          title: 'Description',
          description: [
            'The TabBar uses internally a SingleChildScrollView and its physics will be automatically chosen by the underlying platform.',
            'Most scrollable widgets allow us to define our own physics and TabBar should be no exception.',
            'In my case I am making my whole App with BouncingScrollPhysics, so it looks weird to have the TabBar differently, showing the typical Android Scroll Edge color.'
          ],
        ),
        Description(
          title: 'Details',
          description: [
            'Switch the physics and try to scroll the tab bar',
          ],
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Bouncing + Always Scrollable'),
              onPressed: () => onPhysics(BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics())),
            ),
            RaisedButton(
              child: Text('Never Scroll'),
              onPressed: () => onPhysics(NeverScrollableScrollPhysics()),
            ),
          ],
        )
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Page 2');
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Page 3');
  }
}
