import 'package:flutter/material.dart';

import 'Basic/Constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100 ,
      child: Stack(
        children: <Widget> [
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 40),
            height: 250,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: borderRadiusHeader
            ),
            child: Row(
                children: <Widget>[
                  Text('Header Text', style: Theme
                      .of(context)
                      .textTheme
                      .headline4
                      .copyWith(
                      color: Colors.amber, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                ]
            ),
          )
        ],
      ),
    );
  }

}