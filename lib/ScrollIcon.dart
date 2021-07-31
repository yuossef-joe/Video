import 'package:flutter/material.dart';

import 'Basic/Constants.dart';
import 'VideoScreen.dart';

class ScrollIcon extends StatelessWidget {
  const ScrollIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        constraints: BoxConstraints.expand(height: 200),
        child: ListView(
          padding: EdgeInsets.only(left: 40),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => VideoApp()
                    ),
                );
              },
              child: Row(
                children: [
                  Container(
                    padding: ScreenPadding ,
                    margin: ScreenMargin,
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow:
                          shadowList ,
                        borderRadius: borderRadiusScrollIcon
                    ),
                  ),
                  Container(height: 40,),
                  Container(
                    padding: ScreenPadding,
                    margin: ScreenMargin,
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList ,
                        borderRadius: borderRadiusScrollIcon
                    ),
                  ),
                  Container(height: 40,),
                  Container(
                    padding: ScreenPadding,
                    margin: ScreenMargin,
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList ,
                        borderRadius: borderRadiusScrollIcon
                    ),
                  ),
                  Container(height: 40,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
