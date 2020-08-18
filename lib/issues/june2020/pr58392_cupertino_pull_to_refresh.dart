import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr58392CupertinoPullToRefresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cupertino pull to refersh')),
      body: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverRefreshControl(
            onRefresh: () => Future.delayed(Duration(seconds: 5)),
          ),
          SliverSafeArea(
            top: true,
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Column(
                    children: [
                      Description(
                        title: 'Description',
                        description: [
                          'The current iOS pull-to-refresh action renders a down-arrow as the user is pulling downwards, but this is not how iOS behaves. Rather, it should progressively reveal the activity ticks one-by-one until the refresh action is triggered, at which point the activity indicator starts animating.',
                          'This PR modifies CupertinoActivityIndicator to add the ability to pass a progress value so that the indicator ticks can be revealed one-by-one.'
                        ],
                      ),
                      Description(
                        title: 'Details',
                        description: [
                          'Launch this demo on iOs device to see the result and try pull to refresh',
                        ],
                      ),
                    ],
                  ),
                  childCount: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
