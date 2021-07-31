import 'package:flutter/material.dart';

import 'body.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Body(),
      appBar: builderApp(),
    );
  }

  AppBar builderApp() {
    return AppBar(
      elevation: 0,
    );
  }
}