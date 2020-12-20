import 'package:facebook_clone_darkmode/DarkModeTheme/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DarkModeSetting extends StatefulWidget {
  @override
  _DarkModeSettingState createState() => _DarkModeSettingState();
}

class _DarkModeSettingState extends State<DarkModeSetting> {
  bool _currentvalue = false;

  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: themeprovider.isLightTheme
                ? Image.asset(
                    "Assets/iconfinder_sun_light_mode_day_5402428.png",
                    height: 30,
                    color: themeprovider.themeMode().iconColor,
                  )
                : Image.asset(
                    "Assets/iconfinder_moon_dark_mode_night_5402400.png",
                    height: 30,
                    color: themeprovider.themeMode().iconColor,
                  ),
            title: Text(
              "Dark mode",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () async {
              await themeprovider.toggleThemeData();
            },
          ),
        )
      ],
    );
  }
}
