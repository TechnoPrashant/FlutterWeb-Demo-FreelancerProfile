import 'package:FlutterWeb_Demo_FreelancerProfile/utils/ResponsiveLayout.dart';
import 'package:FlutterWeb_Demo_FreelancerProfile/utils/const_utils.dart';
import 'package:flutter/material.dart';

class PageContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            width: ConstUtils().pageConentBodayWidth,
            child: ConstUtils().widgetUtils.menuTextWithCenterSize(
                context: context,
                name: ConstUtils().stringUtils.contactTitle,
                color: Colors.yellow,
                textSizeSmall: 16,
                textSizeMedium: 22,
                textSizeLarge: 30),
          ),
        ),
        ConstUtils().widgetUtils.spaceVertical(20),
        Container(
          width: ConstUtils().pageConentBodayWidth,
          child: ConstUtils().widgetUtils.contentCenterText(
              name: ConstUtils().stringUtils.contactDesc,
              context: context,
              color: Colors.white.withOpacity(0.50),
              textSizeSmall: 12,
              textSizeMedium: 16,
              textSizeLarge: 18),
        ),
        ConstUtils().widgetUtils.spaceVertical(50),
        contactForm(context)
      ],
    );
  }

  Widget contactForm(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(10),
      width: ConstUtils().pageConentBodayWidth,
      child: Column(
        children: <Widget>[
          formField(ConstUtils().stringUtils.contactName),
          ConstUtils().widgetUtils.spaceVertical(10),
          formField(ConstUtils().stringUtils.contactEmail),
          ConstUtils().widgetUtils.spaceVertical(10),
          formField(ConstUtils().stringUtils.contactPhone),
          ConstUtils().widgetUtils.spaceVertical(10),
          Card(
            elevation: 8,
            color: Colors.black.withOpacity(.40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(26))),
            child: TextField(
              //controller: _textEditingControllerEmail,
              maxLines: 10,
              minLines: 10,
              style: ConstUtils().styleUtils.loginTextFieldStyle(),
              decoration: ConstUtils()
                  .styleUtils
                  .textFieldDecoration(ConstUtils().stringUtils.contactMessage),
            ),
          ),
          ConstUtils().widgetUtils.spaceVertical(10),
          Align(
            alignment: Alignment.topRight,
            child: Container(
                width: ResponsiveLayout.isSmallScreen(context) ? 160 : 200,
                child:
                    ConstUtils().widgetUtils.button('Send Message', context)),
          ),
          ConstUtils().widgetUtils.spaceVertical(20),
        ],
      ),
    );
  }

  Widget formField(String hint) {
    double cardElevation = 8;
    return Card(
      elevation: cardElevation,
      color: Colors.black.withOpacity(.40),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(26))),
      child: TextField(
        //controller: _textEditingControllerEmail,
        maxLines: 1,
        style: ConstUtils().styleUtils.loginTextFieldStyle(),
        decoration: ConstUtils().styleUtils.textFieldDecoration(hint),
      ),
    );
  }
}
