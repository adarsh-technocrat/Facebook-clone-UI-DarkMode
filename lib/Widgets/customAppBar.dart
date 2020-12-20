import 'package:facebook_clone_darkmode/Constants/constants.dart';
import 'package:facebook_clone_darkmode/Widgets/overLayWidget.dart';
import 'package:facebook_clone_darkmode/DarkModeTheme/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget bottom;

  const CustomAppBar({Key key, @required this.bottom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Constants.borderColor,
          ),
        ),
      ),
      child: AppBar(
        backgroundColor: themeprovider.themeMode().containerColor,
        elevation: 0,
        title: Text(
          "facebook",
          style: TextStyle(
            color: themeprovider.themeMode().facebooklogoColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Icon(
                  FlutterIcons.search_faw,
                  color: themeprovider.themeMode().iconColor,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Icon(
                      FlutterIcons.facebook_messenger_faw5d,
                      color: themeprovider.themeMode().iconColor,
                    ),
                  ),
                ),
              ),
              OverLayClip(
                texttitle: "+9",
                top: 10,
                right: 10,
                radius: 20,
                containerHeight: 15,
                containerWidth: 20,
              )
            ],
          )
        ],
        bottom: bottom,
      ),
    );
  }

  final Size preferredSize = const Size.fromHeight(kToolbarHeight + 45);
}
