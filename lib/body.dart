import 'package:flutter/material.dart';

import 'Header.dart';
import 'ScrollIcon.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(),
          ScrollIcon(),
        ],
      ),
    );
  }

}