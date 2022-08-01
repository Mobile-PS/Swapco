import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/dialog/dialog_button.dart';
import 'package:swapco/login/default_button1.dart';

class CoinSwapDialog extends StatefulWidget {
  @override
  _CoinSwapDialog createState() => _CoinSwapDialog();
}

class _CoinSwapDialog extends State<CoinSwapDialog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 303,
          height: screenHeight(context) / 3.2,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Stack(alignment: Alignment.center, children: [
            Positioned(
                bottom: 120,
                child: Container(
                  height: screenHeight(context) / 3.1,
                  width: screenWidth(context),
                  // margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                  decoration: BoxDecoration(
                    borderRadius:
                        new BorderRadius.all(Radius.elliptical(260, 180)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: Ovalcolors),
                  ),
                )),
            Stack(alignment: Alignment.center, children: [
              Positioned(bottom: 80, child: Text('Accept Swap Coins')),
              Positioned(
                  bottom: 40,
                  child: Container(
                      child: Row(
                    children: [Image.asset(constImage.starWork), Text('20')],
                  )))
            ])
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Welcome to SwapCo',
          style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(51, 51, 51, 1),
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 50,
        ),
        DialogButton(
          height: 44,
          text: 'ACCEPT',
        ),
        Text('Maybe later')
      ],
    );
  }
}