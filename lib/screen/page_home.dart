import 'dart:js' as js;

import 'package:FlutterWeb_Demo_FreelancerProfile/utils/ResponsiveLayout.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/const_utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageHome extends StatelessWidget {
  double iconSize=24;
  double horizontalSpace=30;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ResponsiveLayout.isSmallScreen(context)
          ? EdgeInsets.only(bottom: 14)
          : EdgeInsets.only(bottom: 0),
      child: Column(
        crossAxisAlignment: ResponsiveLayout.isSmallScreen(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstUtils().widgetUtils.menuTextWithSize(
              context: context,
              name: "HELLO, I’M",
              color: Colors.yellow,
              textSizeSmall: 16,
              textSizeMedium: 22,
              textSizeLarge: 30),
          ConstUtils().widgetUtils.spaceVertical(20),
          ConstUtils().widgetUtils.headingText(
              name: ConstUtils().stringUtils.fullname,
              color: Colors.white,
              context: context,
              textSizeLarge: 42,
              textSizeMedium: 36,
              textSizeSmall: 22),
          ConstUtils().widgetUtils.spaceVertical(10),
          ConstUtils().widgetUtils.contentText(
              ConstUtils().stringUtils.bio, Colors.white.withOpacity(.50), 18),
          ConstUtils().widgetUtils.spaceVertical(
              ResponsiveLayout.isSmallScreen(context) ? 50 : 100),
          Row(
            mainAxisAlignment: ResponsiveLayout.isSmallScreen(context)
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {
                  _launchURL(ConstUtils().stringUtils.linkGithub);
                },
                child: Icon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                  size: iconSize,
                ),
              ),
              ConstUtils().widgetUtils.spaceHorizontal(horizontalSpace),
              InkWell(
                onTap: () {
                  _launchURL(ConstUtils().stringUtils.linkLinkedIn);
                },
                child: Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.white,
                  size: iconSize,
                ),
              ),
              ConstUtils().widgetUtils.spaceHorizontal(horizontalSpace),
              InkWell(
                onTap: () {
                  _launchURL(ConstUtils().stringUtils.linkFacebook);
                },
                child: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                  size: iconSize,
                ),
              ),
              ConstUtils().widgetUtils.spaceHorizontal(horizontalSpace),
              InkWell(
                onTap: () {
                  _launchURL(ConstUtils().stringUtils.linkTwitter);
                },
                child: Icon(
                  FontAwesomeIcons.twitterSquare,
                  color: Colors.white,
                  size: iconSize,
                ),
              ),
              ConstUtils().widgetUtils.spaceHorizontal(horizontalSpace),
              InkWell(
                onTap: () {
                  _launchURL("contact@technoprashant.me");
                },
                child: Icon(
                  Icons.mail,
                  color: Colors.white,
                  size: iconSize,
                ),
              ),
              ConstUtils().widgetUtils.spaceHorizontal(horizontalSpace),
              InkWell(
                onTap: () {
                  _launchURL("https://pub.dev/packages?q=publisher%3Atechnoprashant.me");
                },
                child: Image.asset(ConstUtils().stringUtils.ic_dart,height: iconSize,width: iconSize,)
              ),
            ],
          )
        ],
      ),
    );
  }

  _launchURL(String url) async {
    js.context.callMethod('open', [url]);
  }
}
