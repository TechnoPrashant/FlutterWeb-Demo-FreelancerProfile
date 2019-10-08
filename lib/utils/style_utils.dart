import 'package:FlutterWeb_Demo_FreelancerProfile/utils/const_utils.dart';
import 'package:flutter/material.dart';

class StyleUtils {
  InputDecoration textFieldDecoration(String hint) {
    return InputDecoration(
      contentPadding: EdgeInsets.all(16),
      hintText: hint,
      hintStyle: TextStyle(color: Colors.white.withOpacity(.50)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black.withOpacity(.40)),
        borderRadius: BorderRadius.all(Radius.circular(26)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black.withOpacity(.40)),
        borderRadius: BorderRadius.all(Radius.circular(26)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black.withOpacity(.40)),
        borderRadius: BorderRadius.all(Radius.circular(26)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black.withOpacity(.40)),
        borderRadius: BorderRadius.all(Radius.circular(26)),
      ),
    );
  }

  TextStyle loginTextFieldStyle() {
    return TextStyle(
        color: Colors.white,
        fontFamily: ConstUtils().stringUtils.fontContent,
        fontSize: 14);
  }
}
