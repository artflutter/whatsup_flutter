import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr60129FixInkFeature extends StatefulWidget {
  @override
  _Pr60129FixInkFeatureState createState() => _Pr60129FixInkFeatureState();
}

class _Pr60129FixInkFeatureState extends State<Pr60129FixInkFeature>
    with SingleTickerProviderStateMixin {
  TabController _controller;

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
        title: Text('KeepAliveMinxin with Ink'),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(text: 'Info'),
            Tab(text: 'Not alive'),
            Tab(text: 'Kept alive'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Page1(),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Description(
          title: 'Description',
          description: [
            'Material widget will actively paint ink features in its subtree. If the ink feature is kept alive under render sliver multibox adapter, it does not have a valid scroll offset and the ink feature will crash because it cannot get a transformation. This pr makes the sliver multibox adapter returns a zero transformation if the child is currently kept alive.'
          ],
        ),
        Description(
          title: 'Details',
          description: [
            'AutomaticKeepAliveClientMixin allows subtrees to request to be kept alive in lazy lists.',
            'This is useful when you want to save the state between widget rebuilds.',
            'You can check how it work on the next two tabs. Switch between them and read the instructions',
            'If you launch this sample on the current "stable" 1.7.4 - switching from third to first tab will crash the app caused by ',
          ],
        )
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Text('Enter some text and switch to another tab'),
        Text('The text should disappear when you come back'),
        TextField()
      ],
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page3State();
  }
}

class _Page3State extends State<Page3> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Ink(
      child: Column(
        children: [
          SizedBox(height: 8),
          Text('Enter some text and switch to another tab'),
          Text('The text should remain'),
          TextField()
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
