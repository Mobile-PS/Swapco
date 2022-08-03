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

class ItsMatchDialog extends StatefulWidget {
  @override
  _ItsMatchDialog createState() => _ItsMatchDialog();
}

class _ItsMatchDialog extends State<ItsMatchDialog> {
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
            child: Stack(alignment: Alignment.center, children: [
              Positioned(
                  bottom: 185,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: screenHeight(context) / 2.8,
                            width: screenWidth(context) / 1.3,
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(constImage.modelImage),
                                    Text('Beach Wear',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(constImage.modelImage),
                                      Text(
                                        'Formal Wear',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ])
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        DialogButton(
                          height: 44,
                          text: 'Lets Chat',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Maybe later',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(130, 130, 130, 1),
                                fontWeight: FontWeight.w500))
                      ])),
              Positioned(
                top: 20,
                child: Image.asset(constImage.itsMatch),
              ),
              Positioned(
                  top: 45,
                  child: Text("It's a Match",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)))
            ])));
  }
}
