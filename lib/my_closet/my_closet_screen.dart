import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/const_image.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/dialog/dialog_button.dart';
import 'package:swapco/login/login_screen.dart';
import 'package:swapco/signup/widget/default_button.dart';
import 'package:swapco/signup/widget/privacy_policy.dart';

class MyClosetScreen extends StatefulWidget {
  @override
  _MyClosetScreen createState() => _MyClosetScreen();
}

class _MyClosetScreen extends State<MyClosetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            height: screenHeight(context) / 6,
            alignment: Alignment.bottomCenter,
            color: Color.fromRGBO(247, 247, 247, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'My Closet',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(38, 38, 40, 1),
                    fontSize: 28,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(constImage.upload),
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight(context) / 1.2,
            width: screenWidth(context),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage(constImage.mycloset),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'your Closet is empty'.toUpperCase(),
                  style: TextStyle(
                      color: Color.fromRGBO(22, 147, 39, 1),
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('START UPLOADING YOUR 1st GARMET',
                    style: TextStyle(color: Color.fromRGBO(130, 130, 130, 1))),
                SizedBox(
                  height: 40,
                ),
                Image.asset(constImage.closetUpload)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
