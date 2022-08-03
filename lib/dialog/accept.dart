import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/dialog/dialog_button.dart';
import 'package:swapco/login/default_button1.dart';

class AcceptsDialog extends StatefulWidget {
  @override
  _AcceptsDialog createState() => _AcceptsDialog();
}

class _AcceptsDialog extends State<AcceptsDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: screenWidth(context) / 1.3,
          height: screenHeight(context) / 1.3,
          color: Colors.white,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(constImage.artWork),
              Text(
                'Camera/Data Access',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Please allow access to your camera to take photos/videos or upload photos/videos from your mobile.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(74, 74, 74, 1),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              DialogButton(
                height: 45,
                text: 'Allow access',
              ),
              SizedBox(
                height: 10,
              ),
              Text('Skip'),
            ],
          )),
    );
  }
}
