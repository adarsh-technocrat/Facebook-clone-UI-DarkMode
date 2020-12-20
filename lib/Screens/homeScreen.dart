import 'package:facebook_clone_darkmode/Constants/constants.dart';
import 'package:facebook_clone_darkmode/Screens/darkmodesetting.dart';
import 'package:facebook_clone_darkmode/Screens/firstScreen.dart';
import 'package:facebook_clone_darkmode/Widgets/customAppBar.dart';
import 'package:facebook_clone_darkmode/Widgets/overLayWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
      print("Selected Index: " + _tabController.index.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CustomAppBar(
          bottom: TabBar(
            indicatorColor: Constants.logoColor,
            controller: _tabController,
            tabs: [
              Tab(
                  icon: Icon(
                FlutterIcons.home_ant,
                color: _tabController.index == 0
                    ? Constants.logoColor
                    : Constants.appBariconColor,
                size: 25,
              )),
              Tab(
                  icon: Icon(
                FlutterIcons.people_outline_mdi,
                color: _tabController.index == 1
                    ? Constants.logoColor
                    : Constants.appBariconColor,
                size: 25,
              )),
              Stack(
                children: [
                  Tab(
                      icon: Icon(
                    FlutterIcons.live_tv_mdi,
                    color: _tabController.index == 2
                        ? Constants.logoColor
                        : Constants.appBariconColor,
                    size: 25,
                  )),
                  OverLayClip(
                    texttitle: "4",
                    containerHeight: 12,
                    containerWidth: 12,
                    top: 10,
                    right: 0,
                    radius: 30,
                  ),
                ],
              ),
              Tab(
                  icon: Icon(
                FlutterIcons.shop_ent,
                color: _tabController.index == 3
                    ? Constants.logoColor
                    : Constants.appBariconColor,
                size: 25,
              )),
              Stack(
                children: [
                  Tab(
                      icon: Icon(
                    FlutterIcons.bell_ring_outline_mco,
                    color: _tabController.index == 4
                        ? Constants.logoColor
                        : Constants.appBariconColor,
                    size: 25,
                  )),
                  OverLayClip(
                    texttitle: "99+",
                    containerHeight: 12,
                    containerWidth: 20,
                    top: 10,
                    right: 0,
                    radius: 30,
                  )
                ],
              ),
              Tab(
                  icon: Icon(
                FlutterIcons.hamburger_faw5s,
                color: _tabController.index == 5
                    ? Constants.logoColor
                    : Constants.appBariconColor,
                size: 25,
              )),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            FirstScreen(),
            FirstScreen(),
            FirstScreen(),
            FirstScreen(),
            FirstScreen(),
            DarkModeSetting(),
          ],
        ),
      ),
    );
  }
}
