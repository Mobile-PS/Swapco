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
    return Container(
      width: 303,
      height: 404,
      color: Colors.red,
      margin: EdgeInsets.all(60),
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(constImage.artWork),
          Text('Camera/Data Access'),
          Text(
              'Please allow access to your camera to take photos/videos or upload photos/videos from your mobile.'),
          DialogButton(
            text: 'Allow access',
          ),
          Text('Skip'),
        ],
      ),
    );
  }
}
