import 'package:flutter/material.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class SimpleButtonWidget extends StatelessWidget {
  const SimpleButtonWidget({Key? key, this.text, this.press, this.height})
      : super(key: key);
  final String? text;
  final double? height;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () => press!(),
        child: Container(
          height: height,
          width: screenWidth(context) / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: selectedSizeColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
