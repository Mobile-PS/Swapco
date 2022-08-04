import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/dialog/dialog_button.dart';
import 'package:swapco/dialog/selection_method/list_tile_widget.dart';
import 'package:swapco/login/default_button1.dart';
import 'package:swapco/utility/coin_count.dart';

class SelectionMethodDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: screenHeight(context) / 1.3,
            width: screenWidth(context) / 1.3,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: ListView(
              padding: EdgeInsets.all(5),
              children: [
                ListTileSelectionWidget(
                    text: 'TAKE PHOTO', image: constImage.cam_sele),
                ListTileSelectionWidget(
                    text: 'CREATE VIDEO', image: constImage.video_sele),
                ListTileSelectionWidget(
                    text: 'UPLOAD FROM GALLERY', image: constImage.galary_sele),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Skip and Explore',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(130, 130, 130, 1))),
                )
              ],
            )));
  }
}
