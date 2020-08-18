import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:whatsup_flutter/whats_up.dart';

class IssuesList extends StatefulWidget {
  final List<WhatsUp> issues;
  final String title;

  const IssuesList({Key key, this.issues, this.title}) : super(key: key);

  @override
  _IssuesListState createState() => _IssuesListState();
}

class _IssuesListState extends State<IssuesList> {
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
    final textTheme = context.textTheme;

    final issues = widget.issues
        .where(
          (e) =>
              _search == null ||
              e.title.contains(RegExp(_search, caseSensitive: false)),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: _searchController,
              onChanged: (value) => {
                setState(() {
                  _search = value.isEmpty ? null : value;
                })
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF345682),
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minHeight: 45,
                    minWidth: 48,
                  ),
                  hintText: 'Search by issue title...',
                  suffixIcon: _search != null
                      ? IconButton(
                          iconSize: 16,
                          icon: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF9aabc1)),
                              child: Icon(Icons.close, color: Colors.white)),
                          onPressed: _handleSearchClear,
                        )
                      : null),
            ),
          ),
          if (_search == null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                'All Updates',
                style: textTheme.headline6,
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, i) => WhatsUpListItem(whatsUp: issues[i]),
              itemCount: issues.length,
            ),
          )
        ],
      ),
    );
  }
}
