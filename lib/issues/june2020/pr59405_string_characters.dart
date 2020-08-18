import 'package:flutter/material.dart';
import 'package:whatsup_flutter/description.dart';

class Pr59405StringCharacters extends StatelessWidget {
  final sampleText = 'A 🇬🇧 text in English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Export characters'),
      ),
      body: Column(
        children: [
          Description(
            title: 'Description',
            description: [
              'We recently landed support for Dart\'s characters package. In order to encourage developers to use it in their own projects, what if we export it as a part of Flutter?',
              'Previously, users that wanted to properly handle emojis in Flutter had to install and import the characters package before they could do that. With this PR, they would automatically have access to string.characters wherever they\'re using Flutter. This makes the barrier much lower for properly handling complex characters.'
            ],
          ),
          Description(
            title: 'Details',
            description: [
              'To better understand here is an example which counts the amount the length and characters amount in string with emoji',
              '"$sampleText" length is ${sampleText.length}',
              '"$sampleText" characters amount ${sampleText.characters.length}',
              'Whenever you need to manipulate strings at the character level, you should be using the Characters type, not the methods of the String class.'
            ],
          ),
        ],
      ),
    );
  }
}
