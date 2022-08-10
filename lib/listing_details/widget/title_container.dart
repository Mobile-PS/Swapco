import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/const_image.dart';
import 'package:swapco/constants/constants.dart';

class TitleContainerWidget extends StatelessWidget {
  TitleContainerWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: screenWidth(context),
      margin: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromRGBO(79, 79, 79, 1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
      ),
    );
  }
}
