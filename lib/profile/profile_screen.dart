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

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        height: screenHeight(context) / 3.5,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topCenter,
            colors: [
              buttonColor,
              primaryColor,
            ],
          ),
        ),
        child: Row(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Icon(
                Icons.settings,
                size: 26.8,
                color: Colors.white,
              ),
            ),
            Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    textAlign: TextAlign.center,
                    'My Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.terrain)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.bluetooth)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.cake)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.edit)),
        ],
      ),
    );
  }
}
