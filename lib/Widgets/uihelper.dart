import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UIHelper {
  static CustomButton(
      {required VoidCallback callback, required String buttonName}) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text(
            buttonName,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
    );
  }

  static CustomText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: height,
          color: color ?? Color(0XFF5E5E5E),
          fontWeight: fontweight),
    );
  }
}