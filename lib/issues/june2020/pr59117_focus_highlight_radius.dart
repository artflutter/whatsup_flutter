import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59117FocusHighlightRadius extends StatefulWidget {
  @override
  _Pr59117FocusHighlightRadiusState createState() =>
      _Pr59117FocusHighlightRadiusState();
}

class _Pr59117FocusHighlightRadiusState
    extends State<Pr59117FocusHighlightRadius> {
  double radius = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Focus highlight radius'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Currently, the highlight used on an InkResponse when it is focused is a circle with a hard coded radius of 35 (Material.defaultSplashRadius). While a good default, it may not be appropriate for all use cases. This PR has the response use the radius parameter for this if it is given. If not it reverts to Material.defaultSplashRadius as normal.',
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'Adjust the radius with buttons and click inside container to see the result',
            ],
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              height: 100,
              child: InkResponse(
                radius: radius,
                focusColor: const Color(0xff0000ff),
                onTap: () {},
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('+10'),
                onPressed: () => setState(() => radius += 10),
              ),
              RaisedButton(
                child: Text('-10'),
                onPressed: () {
                  if (radius > 10) {
                    setState(() => radius -= 10);
                  }
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
