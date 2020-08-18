import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String title;

  final List<String> description;

  Description({Key key, @required this.title, @required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              this.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: description
                .map((text) => Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(text),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
