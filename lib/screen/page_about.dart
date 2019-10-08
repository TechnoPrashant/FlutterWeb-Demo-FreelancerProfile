import 'package:FlutterWeb_Demo_FreelancerProfile/utils/ResponsiveLayout.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/const_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class PageAbout extends StatefulWidget {
  @override
  _PageAboutState createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
  double percentageAndroid = 0;
  double percentageiOS = 0;
  double percentageFlutter = 0;
  double percentagePhotoshop = 0;
  double percentageSketch = 0;
  double percentageWebsite = 0;

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(microseconds: 500), () {
      setState(() {
        percentageAndroid = 90;
        percentageiOS = 60;
        percentageFlutter = 70;
        percentagePhotoshop = 50;
        percentageSketch = 65;
        percentageWebsite = 75;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ResponsiveLayout.isSmallScreen(context)
          ? EdgeInsets.all(14)
          : EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: ResponsiveLayout.isSmallScreen(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstUtils().widgetUtils.menuTextWithSize(
              context: context,
              name: ConstUtils().stringUtils.aboutTital,
              color: Colors.yellow,
              textSizeSmall: 22,
              textSizeMedium: 28,
              textSizeLarge: 30),
          ConstUtils().widgetUtils.spaceVertical(20),
          Container(
            width: ConstUtils().pageConentBodayWidth,
            child: ConstUtils().widgetUtils.contentCenterText(
                name: ConstUtils().stringUtils.aboutContent,
                context: context,
                color: Colors.white.withOpacity(0.50),
                textSizeSmall: 12,
                textSizeMedium: 16,
                textSizeLarge: 18),
          ),
          ConstUtils().widgetUtils.spaceVertical(50),
          skillWidget('ANDROID', '90%', percentageAndroid),
          ConstUtils().widgetUtils.spaceVertical(10),
          skillWidget('iOS', '60%', percentageiOS),
          ConstUtils().widgetUtils.spaceVertical(10),
          skillWidget('FLUTTER', '70%', percentageFlutter),
          ConstUtils().widgetUtils.spaceVertical(10),
          skillWidget('PHOTOSHOP', '50%', percentagePhotoshop),
          ConstUtils().widgetUtils.spaceVertical(10),
          skillWidget('SKETCH', '65%', percentageSketch),
          ConstUtils().widgetUtils.spaceVertical(10),
          skillWidget('WEBSITE', '75%', percentageWebsite),
          ConstUtils().widgetUtils.spaceVertical(50),
        ],
      ),
    );
  }

  Widget skillWidget(String skill, String strPercentage, double percentage) {
    return Container(
      width: ConstUtils().pageConentBodayWidth,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: ConstUtils()
                    .widgetUtils
                    .contentText(skill, Colors.white, 16),
              ),
              Align(
                alignment: Alignment.topRight,
                child: ConstUtils()
                    .widgetUtils
                    .contentText(strPercentage, Colors.white, 16),
              )
            ],
          ),
          ConstUtils().widgetUtils.spaceVertical(10),
          RoundedProgressBar(
              milliseconds: 2000,
              percent: percentage,
              height: 12,
              style: RoundedProgressBarStyle(
                  borderWidth: 2,
                  colorProgressDark: Color(0xfff39c12),
                  colorProgress: Color(0xfff1c40f),
                  widthShadow: 4,
                  colorBorder: Colors.white,
                  backgroundProgress:
                      ConstUtils().colorUtils.blackCircal.withOpacity(.80)),
              borderRadius: BorderRadius.circular(24)),
        ],
      ),
    );
  }
}
