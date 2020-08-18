import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:whatsup_flutter/routes/router.gr.dart';

void main() {
  runApp(WhatsUpFlutter());
}

class WhatsUpFlutter extends StatelessWidget {
  final Key route = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      highContrastDarkTheme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      highContrastTheme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator<AppRouter>(key: route, router: AppRouter()),
    );
  }
}
