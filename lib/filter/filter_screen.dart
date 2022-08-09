import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/const_image.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/dialog/dialog_button.dart';
import 'package:swapco/filter/widget/Location_widget.dart';
import 'package:swapco/filter/widget/dropdown.dart';
import 'package:swapco/filter/widget/size_container.dart';
import 'package:swapco/filter/widget/size_list.dart';
import 'package:swapco/login/login_screen.dart';
import 'package:swapco/signup/widget/default_button.dart';
import 'package:swapco/signup/widget/privacy_policy.dart';
import 'package:swapco/utility/default_button_widget.dart';
import 'package:swapco/utility/simple_button_widget.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreen createState() => _FilterScreen();
}

class _FilterScreen extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              height: screenHeight(context) / 6,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Filter',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 34,
                    ),
                  ),
                  Image.asset(constImage.closeButton)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LocationWidget(title: 'Location'),
            DropdownWidget(title: 'Category'),
            DropdownWidget(title: 'Sub Category'),
            SizeList(),
            SizedBox(
              height: 60,
            ),
            SimpleButtonWidget(
              text: 'Save',
              color: selectedSizeColor,
              width: screenWidth(context) / 2,
              height: 44,
            )
          ],
        ),
      ),
    );
  }
}
