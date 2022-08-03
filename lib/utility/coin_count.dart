import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/dialog/dialog_button.dart';
import 'package:swapco/login/default_button1.dart';

class CoinCount extends StatelessWidget {
  CoinCount({
    Key? key,
    this.count,
  }) : super(key: key);
  final String? count;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 8,
        top: 1,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(constImage.coin),
          SizedBox(
            width: 10,
          ),
          Text(
            count!,
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
