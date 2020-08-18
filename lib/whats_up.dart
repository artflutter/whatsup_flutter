import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

enum WhatsUpMenuEnum { pr, issue }

class WhatsUpListItem extends StatelessWidget {
  final WhatsUp whatsUp;

  const WhatsUpListItem({Key key, this.whatsUp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 16, top: 4, bottom: 4),
        onTap: () {
          ExtendedNavigator.of(context).push<void>(whatsUp.route);
        },
        title: Text(whatsUp.title),
        trailing: PopupMenuButton<WhatsUpMenuEnum>(
          onSelected: (value) {
            if (value == WhatsUpMenuEnum.pr) {
              launch('https://github.com/flutter/flutter/pull/${whatsUp.pr}');
            }

            if (value == WhatsUpMenuEnum.issue) {
              launch(
                  'https://github.com/flutter/flutter/issues/${whatsUp.issue}');
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              if (WhatsUpMenuEnum.pr != null)
                PopupMenuItem<WhatsUpMenuEnum>(
                  value: WhatsUpMenuEnum.pr,
                  child: Text('Related PR'),
                ),
              if (WhatsUpMenuEnum.issue != null)
                PopupMenuItem<WhatsUpMenuEnum>(
                  value: WhatsUpMenuEnum.issue,
                  child: Text('Fixed issue'),
                ),
            ];
          },
        ),
      ),
    );
  }
}

class WhatsUp {
  final String pr;
  final String issue;
  final String title;
  final String route;

  WhatsUp({
    this.title,
    this.pr,
    this.issue,
    this.route,
  });
}
