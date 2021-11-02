import 'package:flutter/material.dart';
import 'package:mythemespractice/main.dart';

class MyThemes {
  static ThemeData get yellowTheme => ThemeData(
      primarySwatch: Colors.yellow,
      primaryColor: Colors.yellow,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.red,
        shape: Border.all(
          style: BorderStyle.solid,
          width: 3,
          color: Colors.red,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity);

  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        primaryColorDark: Colors.black54,
        primaryColorBrightness: Brightness.dark,
        dividerTheme: DividerThemeData(color: Colors.white60, thickness: 10),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );

  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity);

  static ThemeData get myAppCurrentTheme {
    if (isYellow) {
      return yellowTheme;
    } else if (isDark) {
      return darkTheme;
    } else {
      return lightTheme;
    }
  }
}
