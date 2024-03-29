import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tiktok Clone",
      home: Home(),
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
    );
  }
}
