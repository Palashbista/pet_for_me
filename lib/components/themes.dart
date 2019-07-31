import 'package:flutter/material.dart';

enum MyThemeKeys { LIGHT, DARK, BRIGHTNESS, DARKNESS }

class MyThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
  );

  static final ThemeData defaultTitleTheme = ThemeData(
    brightness: Brightness.light,
  );

  static final ThemeData purpleTitleTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepPurpleAccent,
  );

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
      case MyThemeKeys.DARKNESS:
        return defaultTitleTheme;
      case MyThemeKeys.BRIGHTNESS:
        return purpleTitleTheme;
      default:
        return lightTheme;
    }
  }
}
