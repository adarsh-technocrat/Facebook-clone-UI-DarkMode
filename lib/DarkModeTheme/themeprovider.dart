// we use provider to manage the app state

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import '../Constants/constants.dart';

class ThemeProvider with ChangeNotifier {
  bool isLightTheme;

  ThemeProvider({this.isLightTheme});

  // use to toggle the theme
  toggleThemeData() async {
    final settings = await Hive.openBox('settings');
    settings.put('isLightTheme', !isLightTheme);
    isLightTheme = !isLightTheme;
    print(isLightTheme);
    notifyListeners();
  }

  // Global theme data we are always check if the light theme is enabled #isLightTheme
  ThemeData themeData() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: isLightTheme ? Colors.white : Color(0xFF1E1F28),
      brightness: isLightTheme ? Brightness.light : Brightness.dark,
      scaffoldBackgroundColor:
          isLightTheme ? Color(0xFFCACCD3) : Color(0xFF18191B),
    );
  }

  // Theme mode to display unique properties not cover in theme data
  ThemeColor themeMode() {
    return ThemeColor(
      containerColor: isLightTheme ? Colors.white : Color(0xff242527),
      facebooklogoColor: isLightTheme ? Constants.logoColor : Colors.white,
      textColor: isLightTheme ? Color(0xFF000000) : Color(0xFFFFFFFF),
      iconColor: isLightTheme ? Colors.black : Colors.white,
    );
  }
}

// A class to manage specify colors and styles in the app not supported by theme data
class ThemeColor {
  Color textColor;
  Color containerColor;
  Color facebooklogoColor;
  Color iconColor;

  ThemeColor({
    this.textColor,
    this.containerColor,
    this.facebooklogoColor,
    this.iconColor,
  });
}
