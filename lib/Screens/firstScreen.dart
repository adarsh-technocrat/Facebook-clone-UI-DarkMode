import 'package:facebook_clone_darkmode/Constants/constants.dart';
import 'package:facebook_clone_darkmode/Widgets/storySection.dart';
import 'package:facebook_clone_darkmode/DarkModeTheme/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../Widgets/postWidget.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: themeprovider.themeMode().containerColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(Constants.profilepic),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, bottom: 5, top: 5, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Constants.borderColor,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 5, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Write something here...",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      "यहाँ कुछ लिखिए ...",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Constants.borderColor,
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FlutterIcons.ios_videocam_ion,
                              color: Constants.videocallcolor,
                            ),
                            Text(
                              "Live",
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Constants.borderColor,
                      height: 20,
                      width: 1,
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FlutterIcons.photo_library_mdi,
                              color: Constants.photoiconcolor,
                            ),
                            Text(
                              "photo",
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Constants.borderColor,
                      height: 20,
                      width: 1,
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FlutterIcons.video_call_mdi,
                              color: Constants.roomiconColor,
                            ),
                            Text(
                              "Room",
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: themeprovider.themeMode().containerColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 110,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffE7F3FE), width: 2),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  RadiantGradientMask(
                                    child: Icon(
                                      FlutterIcons.video_call_mdi,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Create Room",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                NetworkImage(Constants.activepeoplepic),
                          ),
                        ),
                        Positioned(
                          right: 13,
                          bottom: 13,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              margin: EdgeInsets.all(2),
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          StorySection(),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, int index) => Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: PostWidget(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [Color(0xff5B66DC), Color(0xffA33CC5)],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
