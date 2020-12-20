import 'package:facebook_clone_darkmode/Constants/constants.dart';
import 'package:flutter/material.dart';

class OverLayClip extends StatelessWidget {
  final String texttitle;
  final double right;
  final double top;
  final double containerHeight;
  final double containerWidth;
  final double radius;
  final double left;
  final double bottom;

  const OverLayClip(
      {Key key,
      this.texttitle,
      this.right,
      this.top,
      this.containerHeight,
      this.containerWidth,
      this.radius,
      this.left,
      this.bottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      left: left,
      bottom: bottom,
      child: Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          color: Constants.overlayColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            texttitle,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
