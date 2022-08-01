import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/login/default_button1.dart';

class FirstDialog extends StatefulWidget {
  @override
  _FirstDialog createState() => _FirstDialog();
}

class _FirstDialog extends State<FirstDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: 303,
          height: 404,
          color: Colors.red,
          margin: EdgeInsets.all(60),
          alignment: Alignment.center,
          child: Stack(alignment: Alignment.center, children: [
            Positioned(
                bottom: 260,
                child: Container(
                  alignment: Alignment.center,
                  height: screenHeight(context) / 3.5,
                  width: screenWidth(context),
                  // margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.all(Radius.elliptical(
                        screenWidth(context), screenHeight(context) / 3.5)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: Ovalcolors),
                  ),
                )),
          ]),
        ));
  }
}
