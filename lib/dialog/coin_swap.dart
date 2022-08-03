import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/dialog/dialog_button.dart';
import 'package:swapco/login/default_button1.dart';
import 'package:swapco/utility/coin_count.dart';

class CoinSwapDialog extends StatefulWidget {
  @override
  _CoinSwapDialog createState() => _CoinSwapDialog();
}

class _CoinSwapDialog extends State<CoinSwapDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            width: 300,
            child: Stack(alignment: Alignment.center, children: [
              Positioned(
                  bottom: 50,
                  child: Container(
                    height: screenHeight(context) / 3.1,
                    width: 303,
                    // margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.bottomCenter,
                          image: AssetImage(constImage.starBack),
                          opacity: 0.5),
                      borderRadius:
                          new BorderRadius.all(Radius.elliptical(260, 180)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: Ovalcolors),
                    ),
                  )),
              Positioned(
                top: 40,
                child: Text(
                  'Accept Swap Coins',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Positioned(
                  top: 80,
                  child: CoinCount(
                    count: '20',
                  ))
            ]),
          ),
          DialogButton(
            height: 44,
            text: 'ACCEPT',
          ),
          SizedBox(
            height: 20,
          ),
          Text('Maybe later')
        ],
      ),
    );
  }
}
