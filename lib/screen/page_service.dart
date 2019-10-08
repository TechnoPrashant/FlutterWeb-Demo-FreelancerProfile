import 'package:FlutterWeb_Demo_FreelancerProfile/utils/ResponsiveLayout.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/const_utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: ResponsiveLayout.isSmallScreen(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            width: ConstUtils().pageConentBodayWidth,
            child: ConstUtils().widgetUtils.menuTextWithCenterSize(
                context: context,
                name: "MY SERVICES",
                color: Colors.yellow,
                textSizeSmall: 16,
                textSizeMedium: 24,
                textSizeLarge: 30),
          ),
        ),
        ConstUtils().widgetUtils.spaceVertical(20),
        Container(
          padding: ResponsiveLayout.isSmallScreen(context)
              ? EdgeInsets.all(10)
              : EdgeInsets.all(0),
          width: ConstUtils().pageConentBodayWidth,
          child: ConstUtils().widgetUtils.contentCenterText(
              name: ConstUtils().stringUtils.serviceContnet,
              context: context,
              color: Colors.white.withOpacity(0.50),
              textSizeSmall: 12,
              textSizeMedium: 16,
              textSizeLarge: 18),
        ),
        ConstUtils().widgetUtils.spaceVertical(50),
        ResponsiveLayout.isSmallScreen(context)
            ? serviceColumn(context)
            : serviceRow(context)
        //serviceRow(context),
      ],
    );
  }

  Widget serviceColumn(BuildContext context) {
    return Container(
        width: ConstUtils().pageConentBodayWidth,
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          rowItem(
              FontAwesomeIcons.mobileAlt,
              ConstUtils().stringUtils.serviceMobileApp,
              ConstUtils().stringUtils.serviceContentMobileApp,
              context),
          rowItem(
              FontAwesomeIcons.typo3,
              ConstUtils().stringUtils.serviceCrossPlatform,
              ConstUtils().stringUtils.serviceContentCrossPlatform,
              context),
          rowItem(
              FontAwesomeIcons.phoenixSquadron,
              ConstUtils().stringUtils.serviceWeb,
              ConstUtils().stringUtils.serviceContentWebApp,
              context),
          rowItem(
              FontAwesomeIcons.magic,
              ConstUtils().stringUtils.serviceDesign,
              ConstUtils().stringUtils.serviceContentDesign,
              context),
        ]));
  }

  Widget serviceRow(BuildContext context) {
    return Container(
      width: ConstUtils().pageConentBodayWidth,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              rowItem(
                  FontAwesomeIcons.mobileAlt,
                  ConstUtils().stringUtils.serviceMobileApp,
                  ConstUtils().stringUtils.serviceContentMobileApp,
                  context),
              rowItem(
                  FontAwesomeIcons.typo3,
                  ConstUtils().stringUtils.serviceCrossPlatform,
                  ConstUtils().stringUtils.serviceContentCrossPlatform,
                  context),
            ],
          ),
          ConstUtils().widgetUtils.spaceVertical(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              rowItem(
                  FontAwesomeIcons.phoenixSquadron,
                  ConstUtils().stringUtils.serviceWeb,
                  ConstUtils().stringUtils.serviceContentWebApp,
                  context),
              rowItem(
                  FontAwesomeIcons.magic,
                  ConstUtils().stringUtils.serviceDesign,
                  ConstUtils().stringUtils.serviceContentDesign,
                  context),
            ],
          ),
        ],
      ),
    );
  }

  Widget rowItem(
      IconData icon, String title, String content, BuildContext context) {
    return Container(
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        color: ConstUtils().colorUtils.blackCircal,
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                color: Colors.yellow,
                size: 50,
              ),
              ConstUtils().widgetUtils.spaceVertical(6),
              ConstUtils()
                  .widgetUtils
                  .headingCenterText(title, Colors.white, 18),
              ConstUtils().widgetUtils.spaceVertical(10),
              ConstUtils().widgetUtils.contentCenterText(
                  name: content,
                  context: context,
                  color: Colors.white.withOpacity(0.50),
                  textSizeSmall: 10,
                  textSizeMedium: 12,
                  textSizeLarge: 14)
            ],
          ),
        ),
      ),
    );
  }
}
