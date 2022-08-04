import 'package:flutter/material.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

import 'package:swapco/profile/widget/list.dart';
import 'package:swapco/subscription/widget/list.dart';

import 'package:swapco/utility/default_button_widget.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  _SubscriptionScreen createState() => _SubscriptionScreen();
}

class _SubscriptionScreen extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            height: screenHeight(context) / 7,
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
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 26.8,
                  color: Colors.white,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Subscriptions',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Image.asset(constImage.paper)
              ],
            ),
          ),
          Container(
              height: screenHeight(context) / 3.5,
              width: screenWidth(context),
              color: Color.fromRGBO(242, 242, 242, 1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(constImage.bigcoin),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Your current SwapCo Coins',
                      style: TextStyle(
                          color: Color.fromRGBO(155, 155, 155, 1),
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                          fontSize: 42,
                          color: Color.fromRGBO(0, 146, 69, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  ])),
          Expanded(
            child: ListView(
              children: [
                ListTileSubWidget(
                  text: '10 Swappies Monthly',
                  subtext: 'Standard plan',
                ),
              ],
            ),
          )
        ],
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
