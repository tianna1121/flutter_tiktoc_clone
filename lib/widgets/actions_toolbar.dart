import 'package:flutter/material.dart';

import '../tiktok_icons.dart';

class ActionsToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getSocialAction(icon: TikTokIcons.heart, title: "3.2m"),
        _getSocialAction(icon: TikTokIcons.chat_bubble, title: "16.4k"),
        _getSocialAction(
            icon: TikTokIcons.reply, title: "Share", isShare: true),
      ]),
    );
  }

  Widget _getSocialAction({String title, IconData icon, bool isShare = false}) {
    return Container(
      height: 60.0,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: isShare ? 25.0 : 35.0,
            color: Colors.grey[300],
          ),
          Padding(
            padding: EdgeInsets.only(top: isShare ? 5.0 : 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: isShare ? 10.0 : 12.0),
            ),
          )
        ],
      ),
    );
  }
}
