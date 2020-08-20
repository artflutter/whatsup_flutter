import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59766FormFieldAutovalidationMode extends StatefulWidget {
  Pr59766FormFieldAutovalidationMode({Key key}) : super(key: key);

  @override
  _Pr59766FormFieldAutovalidationModeState createState() =>
      _Pr59766FormFieldAutovalidationModeState();
}

class _Pr59766FormFieldAutovalidationModeState
    extends State<Pr59766FormFieldAutovalidationMode> {
  String _validateSample(String value) {
    if (value.trim().isEmpty) {
      return 'This field should not be empty';
    } else if (value.length < 4) {
      return 'Minimum allowed is 6 charaters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'Adds new property `autovalidateMode` to adjust the validation method.',
            ],
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'With AutovalidateMode.onUserInteraction',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            validator: _validateSample,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: TextFormField(
              autovalidate: true,
              controller: TextEditingController(),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'With autovalidate: true',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
              validator: _validateSample,
            ),
          ),
          TextFormField(
            controller: TextEditingController(),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'With autovalidate: false',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            validator: _validateSample,
          ),
        ],
      ),
    );
  }
}
