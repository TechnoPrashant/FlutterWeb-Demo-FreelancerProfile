import 'package:FlutterWeb_Demo_FreelancerProfile/screen/page_about.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/screen/page_contact.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/screen/page_home.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/screen/page_service.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/ResponsiveLayout.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/const_utils.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> menuList = ["HOME", "ABOUT", "SERVICE", "CONTACT"];
  int clickPosition = 0;
  Widget widgetbody = PageHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstUtils().colorUtils.blackBG_A,
      appBar: PreferredSize(
          preferredSize: ResponsiveLayout.isSmallScreen(context)
              ? Size.fromHeight(50.0)
              : Size.fromHeight(0.0),
          // here the desired height
          child: AppBar(
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: ConstUtils().colorUtils.blackBG_A,
            iconTheme: new IconThemeData(color: Colors.white),

            // ...
          )),
      drawer: ResponsiveLayout.isSmallScreen(context)
          ? Drawer(
              child: Container(
                  color: ConstUtils().colorUtils.blackBG_A,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: ConstUtils().widgetUtils.headingText(
                            name: ConstUtils().stringUtils.fullname,
                            color: Colors.yellow,
                            context: context,
                            textSizeLarge: 32,
                            textSizeMedium: 22,
                            textSizeSmall: 18),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          child: WidgetUtils().lineHorizontal(
                              color: Colors.black45, height: 1)),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: menuList.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              splashColor: Colors.yellow,
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: ConstUtils().widgetUtils.menuText(
                                    menuList[index], Colors.white, context),
                              ),
                              onTap: () {
                                setState(() {
                                  clickPosition = index;
                                  Navigator.of(context).pop();
                                });
                              },
                            );
                          }),
                    ],
                  )),
            )
          : null,
      body: bodyUI(),
    );
  }

  Widget bodyUI() {
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
                width: ResponsiveLayout.isSmallScreen(context) ? 0 : 40,
                height: ResponsiveLayout.isSmallScreen(context) ? 0 : 40,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(390)),
                  color: ConstUtils().colorUtils.blackCircal)),
        ),
        Visibility(
          visible: ResponsiveLayout.isSmallScreen(context) ? false : true,
          child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.only(top: 20),
                height: 80,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: menuList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        splashColor: Colors.yellow,
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: ConstUtils()
                              .widgetUtils
                              .menuText(menuList[index], Colors.white, context),
                        ),
                        onTap: () {
                          setState(() {
                            clickPosition = index;
                          });
                        },
                      );
                    }),
              )),
        ),

        Align(
          alignment: ResponsiveLayout.isSmallScreen(context)
              ? Alignment.topCenter
              : Alignment.topRight,
          child: Visibility(
            visible: ResponsiveLayout.isSmallScreen(context)
                ? clickPosition != 0 ? false : true
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
                scrollDirection: Axis.vertical, child: bodyPage(clickPosition)),
          ),
        )
        //
      ],
    );
  }

  Widget bodyPage(int clickPosition) {
    setState(() {
      if (clickPosition == 0) {
        widgetbody = PageHome();
      } else if (clickPosition == 1) {
        widgetbody = PageAbout();
      } else if (clickPosition == 2) {
        widgetbody = PageService();
      } else if (clickPosition == 3) {
        widgetbody = PageContact();
      }
    });

    return widgetbody;
  }
}
