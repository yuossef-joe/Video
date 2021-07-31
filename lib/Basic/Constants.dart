import 'package:flutter/material.dart';


// Border Radius
const double kDefaultPadding = 20.0;
const borderRadiusScrollIcon = BorderRadius.all(Radius.circular(15));
const borderRadiusHeader = BorderRadius.only(
    bottomLeft: Radius.circular(40),
    bottomRight: Radius.circular(40)
);

// Shadow
List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.grey,
    blurRadius: 10.0,
  ),
];

// Margin , Padding
const ScreenMargin = EdgeInsets.only(right: 20, bottom: 30, top: 30);
const ScreenPadding = EdgeInsets.all(10) ;

