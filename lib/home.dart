import 'package:flutter/material.dart';
import 'widgets/actions_toolbar.dart';
import 'widgets/bottom_toolbar.dart';
import 'widgets/video_description.dart';

class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100.0,
        color: Colors.yellow[300],
      );

  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            VideoDescription(),
            ActionsToolbar(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          // * Top Section
          topSection,
          // * Middle Section
          middleSection,
          // * Bottom Section
          BottomToolbar(),
        ],
      ),
    );
  }
}
