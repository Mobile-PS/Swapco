import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class SizeContainerListingWidget extends StatelessWidget {
  const SizeContainerListingWidget({
    Key? key,
    this.text,
    this.press,
    required this.color,
  }) : super(key: key);
  final String? text;
  final Function()? press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          alignment: Alignment.center,
          height: 32,
          width: 32,
          margin: EdgeInsets.only(right: 6, left: 0),
          child: Text(
            text!.toUpperCase(),
            style: TextStyle(
                fontSize: 10,
                color:
                    color == selectedSizeColor ? Colors.white : Colors.black),
          ),
          decoration: BoxDecoration(
              color: color,
              border: Border.all(
                  color: color == selectedSizeColor
                      ? selectedSizeColor
                      : Color.fromRGBO(155, 155, 155, 1)),
              borderRadius: BorderRadius.all(Radius.circular(4)))),
    );
  }
}
