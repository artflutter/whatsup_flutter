import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr60179IOs14ActivityIndicator extends StatefulWidget {
  Pr60179IOs14ActivityIndicator({Key key}) : super(key: key);

  @override
  _Pr60179IOs14ActivityIndicatorState createState() =>
      _Pr60179IOs14ActivityIndicatorState();
}

class _Pr60179IOs14ActivityIndicatorState
    extends State<Pr60179IOs14ActivityIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                          'Apple has updated the look of Activity Indicator in iOS14.',
                          'This PR introduced a flag `iOSVersionStyle` for `CupertinoActivityIndicator` to enable new look. The flag will be disabled by default until the official release of iOS14.'
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: CupertinoActivityIndicator(
                              radius: 25,
                              iOSVersionStyle:
                                  CupertinoActivityIndicatorIOSVersionStyle
                                      .iOS13,
                            ),
                          ),
                          Expanded(
                            child: CupertinoActivityIndicator(
                              radius: 25,
                              iOSVersionStyle:
                                  CupertinoActivityIndicatorIOSVersionStyle
                                      .iOS14,
                            ),
                          )
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
