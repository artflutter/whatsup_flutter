import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:whatsup_flutter/issues/july2020/issues.dart';
import 'package:whatsup_flutter/issues/june2020/issues.dart';
import 'package:whatsup_flutter/routes/router.gr.dart';
import 'package:whatsup_flutter/whats_up.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _search;
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _handleSearchClear() {
    setState(() {
      _search = null;
      _searchController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    final list = <String, List<WhatsUp>>{
      'July 2020': julyIssues,
      'June 2020': juneIssues,
    };

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlutterLogo(
            colors: MaterialColor(
              0xFFFFFFFF,
              <int, Color>{
                50: Color(0xFFFFFFFF),
                100: Color(0xFFFFFFFF),
                200: Color(0xFFFFFFFF),
                300: Color(0xFFFFFFFF),
                400: Color(0xFFFFFFFF),
                500: Color(0xFFFFFFFF),
                600: Color(0xFFFFFFFF),
                700: Color(0xFFFFFFFF),
                800: Color(0xFFFFFFFF),
                900: Color(0xFFFFFFFF),
              },
            ),
          ),
        ),
        title: Text('What\'s up Flutter?'),
      ),
      body: ListView(
        children: list
            .map((key, value) => MapEntry(
                key,
                Card(
                  child: ListTile(
                      onTap: () => ExtendedNavigator.of(context).push<void>(
                            Routes.issuesList,
                            arguments: IssuesListArguments(
                              title: key,
                              issues: value,
                            ),
                          ),
                      title: Text(key)),
                )))
            .values
            .toList(),

//        children: [
//          Card(
//            child: ListTile(
//                onTap: () => ExtendedNavigator.of(context).push<void>(
//                      Routes.issuesList,
//                      arguments: IssuesListArguments(
//                        title: 'July 2020',
//                        issues: julyIssues,
//                      ),
//                    ),
//                title: Text('July 2020')),
//          ),
//          Card(
//            child: ListTile(
//                onTap: () => ExtendedNavigator.of(context).push<void>(
//                      Routes.issuesList,
//                      arguments: IssuesListArguments(
//                        title: 'July 2020',
//                        issues: juneIssues,
//                      ),
//                    ),
//                title: Text('June 2020')),
//          ),
//        ],
      ),
    );
  }
}
