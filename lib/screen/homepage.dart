import 'package:FlutterWeb_Demo_FreelancerProfile/screen/page_about.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/screen/page_contact.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/screen/page_home.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/screen/page_service.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/ResponsiveLayout.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/const_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

double menuSpacing = 80;
double menuSpacingSmall = 20;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstUtils().colorUtils.blackBG_A,
      body: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool menu1 = true;
  bool menu2 = false;
  bool menu3 = false;
  bool menu4 = false;
  Widget widgetbody = PageHome();
  int menuClickPosition = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Center(
          child: ConstUtils().widgetUtils.circalContainer(
              ConstUtils().colorUtils.blackBG_B,
              ResponsiveLayout.isSmallScreen(context) ? 300 : 600),
        ),
        Center(
          child: ConstUtils().widgetUtils.circalContainer(
              ConstUtils().colorUtils.blackBG_C,
              ResponsiveLayout.isSmallScreen(context) ? 250 : 500),
        ),
        Center(
          child: ConstUtils().widgetUtils.circalContainer(
              ConstUtils().colorUtils.blackBG_D,
              ResponsiveLayout.isSmallScreen(context) ? 200 : 400),
        ),
        Align(
          alignment: ResponsiveLayout.isSmallScreen(context)
              ? Alignment.topCenter
              : Alignment.topRight,
          child: Container(
              margin: EdgeInsets.only(
                  top: 60,
                  right: ResponsiveLayout.isSmallScreen(context) ? 0 : 100),
              height: ResponsiveLayout.isSmallScreen(context) ? 200 : 400,
              width: ResponsiveLayout.isSmallScreen(context) ? 200 : 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(390)),
                  color: ConstUtils().colorUtils.blackCircal)),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              padding: EdgeInsets.all(
                  ResponsiveLayout.isSmallScreen(context) ? 80 : 140),
              transform: Matrix4.translationValues(
                  ResponsiveLayout.isSmallScreen(context) ? -60.0 : -100.0,
                  ResponsiveLayout.isSmallScreen(context) ? -60.0 : -100.0,
                  0.0),
              child: Image.asset(
                ConstUtils().stringUtils.imgIcon,
                width: ResponsiveLayout.isSmallScreen(context) ? 26 : 40,
                height: ResponsiveLayout.isSmallScreen(context) ? 26 : 40,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(390)),
                  color: ConstUtils().colorUtils.blackCircal)),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(
                  top: ResponsiveLayout.isSmallScreen(context) ? 20 : 60,
                  left: ResponsiveLayout.isSmallScreen(context) ? 40 : 00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        menu1 = true;
                        menu2 = false;
                        menu3 = false;
                        menu4 = false;
                        menuClickPosition = 1;
                      });
                    },
                    child: ConstUtils().widgetUtils.menuText(
                        ConstUtils().stringUtils.menuHome,
                        getMenuColor(menu1),
                        context),
                  ),
                  ConstUtils().widgetUtils.spaceHorizontal(
                      ResponsiveLayout.isSmallScreen(context)
                          ? menuSpacingSmall
                          : menuSpacing),
                  InkWell(
                    onTap: () {
                      setState(() {
                        menu1 = false;
                        menu2 = true;
                        menu3 = false;
                        menu4 = false;
                        menuClickPosition = 2;
                      });
                    },
                    child: ConstUtils().widgetUtils.menuText(
                        ConstUtils().stringUtils.menuAbout,
                        getMenuColor(menu2),
                        context),
                  ),
                  ConstUtils().widgetUtils.spaceHorizontal(
                      ResponsiveLayout.isSmallScreen(context)
                          ? menuSpacingSmall
                          : menuSpacing),
                  InkWell(
                    onTap: () {
                      setState(() {
                        menu1 = false;
                        menu2 = false;
                        menu3 = true;
                        menu4 = false;
                        menuClickPosition = 3;
                      });
                    },
                    child: ConstUtils().widgetUtils.menuText(
                        ConstUtils().stringUtils.menuService,
                        getMenuColor(menu3),
                        context),
                  ),
                  ConstUtils().widgetUtils.spaceHorizontal(
                      ResponsiveLayout.isSmallScreen(context)
                          ? menuSpacingSmall
                          : menuSpacing),
                  InkWell(
                    onTap: () {
                      setState(() {
                        menu1 = false;
                        menu2 = false;
                        menu3 = false;
                        menu4 = true;
                        menuClickPosition = 4;
                      });
                    },
                    child: ConstUtils().widgetUtils.menuText(
                        ConstUtils().stringUtils.menuContact,
                        getMenuColor(menu4),
                        context),
                  ),
                ],
              ),
            ),
          ),
        ),

        Align(
          alignment: ResponsiveLayout.isSmallScreen(context)
              ? Alignment.topCenter
              : Alignment.topRight,
          child: Visibility(
            visible: ResponsiveLayout.isSmallScreen(context)
                ? menuClickPosition != 1 ? false : true
                : true,
            child: Container(
              margin: EdgeInsets.only(
                top: 100,
              ),
              child: Image.asset(
                ConstUtils().stringUtils.imgProfile,
              ),
              height: ResponsiveLayout.isSmallScreen(context) ? 300 : 600,
              width: ResponsiveLayout.isSmallScreen(context) ? 300 : 600,
            ),
          ),
        ),

        Align(
          alignment: ResponsiveLayout.isSmallScreen(context)
              ? Alignment.bottomCenter
              : Alignment.centerLeft,
          child: Container(
            color: Colors.transparent,
            margin: EdgeInsets.only(
                left: ResponsiveLayout.isSmallScreen(context) ? 0 : 250,
                top: ResponsiveLayout.isSmallScreen(context) ? 100 : 160),
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: bodyPage(menuClickPosition)),
          ),
        )
        //
      ],
    );
  }

  Widget bodyPage(int clickPosition) {
    if (clickPosition == 1) {
      widgetbody = PageHome();
    } else if (clickPosition == 2) {
      widgetbody = PageAbout();
    } else if (clickPosition == 3) {
      widgetbody = PageService();
    } else if (clickPosition == 4) {
      widgetbody = PageContact();
    }
    return widgetbody;
  }

  Color getMenuColor(bool isClicked) {
    Color clickColor;
    if (isClicked) {
      clickColor = Colors.yellow;
    } else {
      clickColor = Colors.white;
    }
    return clickColor;
  }
}
