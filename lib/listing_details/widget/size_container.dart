import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class SizeContainerWidget extends StatelessWidget {
  const SizeContainerWidget({
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
          height: 39.73,
          width: 43.71,
          margin: EdgeInsets.only(right: 6, left: 0),
          child: Text(
            text!.toUpperCase(),
            style: TextStyle(
                fontSize: 14,
                color: color == selectedSizeColor
                    ? Colors.white
                    : Color.fromRGBO(155, 155, 155, 1)),
          ),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(4)))),
    );
  }
}
