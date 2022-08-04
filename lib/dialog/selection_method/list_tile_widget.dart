import 'package:flutter/material.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(13),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
      colors: [Color.fromRGBO(255, 0, 0, 1), Color.fromRGBO(42, 201, 64, 1)]),
  border: Border.all(
    color: primaryColor,
  ),
  borderRadius: BorderRadius.circular(13),
);

class ListTileSelectionWidget extends StatelessWidget {
  const ListTileSelectionWidget({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          child: ListTile(
            leading: Image.asset(image!),
            title: Text(text!,
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
          ),
          decoration: kInnerDecoration,
        ),
      ),
      height: 67.0,
      decoration: kGradientBoxDecoration,
    );
  }
}
