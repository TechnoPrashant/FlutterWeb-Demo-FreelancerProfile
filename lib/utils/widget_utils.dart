import 'package:FlutterWeb_Demo_FreelancerProfile/utils/ResponsiveLayout.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/const_utils.dart';
import 'package:flutter/material.dart';

class WidgetUtils {
  Widget spaceHorizontal(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget spaceVertical(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget circalContainer(Color color, double size) {
    return Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(390)),
            color: color));
  }

  Widget menuText(String name, Color color, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        name,
        style: TextStyle(
            color: color,
            fontSize: ResponsiveLayout.isSmallScreen(context) ? 18 : 20,
            fontFamily: ConstUtils().stringUtils.fontMenu),
      ),
    );
  }

  Widget menuTextWithSize(
      {BuildContext context,
      String name,
      Color color,
      double textSizeSmall,
      double textSizeMedium,
      double textSizeLarge}) {
    double textSize = 10;
    if (ResponsiveLayout.isSmallScreen(context)) {
      textSize = textSizeSmall;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      textSize = textSizeMedium;
    } else {
      textSize = textSizeLarge;
    }

    return Text(
      name,
      style: TextStyle(
          color: color,
          fontSize: textSize,
          fontFamily: ConstUtils().stringUtils.fontMenu),
    );
  }

  Widget menuTextWithCenterSize(
      {BuildContext context,
      String name,
      Color color,
      double textSizeSmall,
      double textSizeMedium,
      double textSizeLarge}) {
    double textSize = 10;
    if (ResponsiveLayout.isSmallScreen(context)) {
      textSize = textSizeSmall;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      textSize = textSizeMedium;
    } else {
      textSize = textSizeLarge;
    }

    return Text(
      name,
      textAlign: ResponsiveLayout.isSmallScreen(context)
          ? TextAlign.center
          : TextAlign.start,
      style: TextStyle(
          color: color,
          fontSize: textSize,
          fontFamily: ConstUtils().stringUtils.fontMenu),
    );
  }

  Widget headingText(
      {BuildContext context,
      String name,
      Color color,
      double textSizeSmall,
      double textSizeMedium,
      double textSizeLarge}) {
    double textSize = 10;
    if (ResponsiveLayout.isSmallScreen(context)) {
      textSize = textSizeSmall;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      textSize = textSizeMedium;
    } else {
      textSize = textSizeLarge;
    }

    return Text(
      name,
      style: TextStyle(
          color: color,
          fontSize: textSize,
          fontWeight: FontWeight.w700,
          fontFamily: ConstUtils().stringUtils.fontHeading),
    );
  }

  Widget contentText(String name, Color color, double fontSize) {
    return Text(
      name,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          fontFamily: ConstUtils().stringUtils.fontContent),
    );
  }

  Widget contentCenterText(
      {BuildContext context,
      String name,
      Color color,
      double textSizeSmall,
      double textSizeMedium,
      double textSizeLarge}) {
    double textSize = 10;
    if (ResponsiveLayout.isSmallScreen(context)) {
      textSize = textSizeSmall;
    } else if (ResponsiveLayout.isMediumScreen(context)) {
      textSize = textSizeMedium;
    } else {
      textSize = textSizeLarge;
    }

    return Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: textSize,
          fontWeight: FontWeight.w700,
          fontFamily: ConstUtils().stringUtils.fontContent),
    );
  }

  Widget headingCenterText(String name, Color color, double fontSize) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          fontFamily: ConstUtils().stringUtils.fontHeading),
    );
  }

  Widget button(String buttonName, BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      color: Colors.yellow,
      child: Padding(
          padding: EdgeInsets.only(
              left: ResponsiveLayout.isSmallScreen(context) ? 16 : 20,
              right: ResponsiveLayout.isSmallScreen(context) ? 16 : 20,
              top: ResponsiveLayout.isSmallScreen(context) ? 8 : 18,
              bottom: ResponsiveLayout.isSmallScreen(context) ? 8 : 10),
          child: Center(
            child: Text(
              buttonName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ConstUtils().colorUtils.blackCircal,
                  fontSize: ResponsiveLayout.isSmallScreen(context) ? 14 : 20,
                  fontFamily: ConstUtils().stringUtils.fontMenu),
            ),
          )),
    );
  }

  Widget lineHorizontal({double height, Color color}) {
    return Container(
      height: height,
      color: color,
    );
  }

  Widget lineVertical({double height, Color color, double width}) {
    return Container(
      height: height,
      color: color,
      width: width,
    );
  }
}
