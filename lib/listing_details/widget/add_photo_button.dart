import 'package:flutter/material.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class AddMoreButtonWidget extends StatelessWidget {
  AddMoreButtonWidget({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;

  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: MaterialButton(
        color: Color.fromRGBO(232, 232, 232, 1),
        elevation: 0,
        minWidth: screenWidth(context),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        onPressed: () => press!(),
        child: Text(
          text!,
          style: TextStyle(
              color: Color.fromRGBO(51, 51, 51, 1),
              fontSize: 10,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
