import '../constants.dart';
import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
    fontFamily: "SF Pro Text",
    primaryColor: kAccentColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: kBgColor,
  );
}
