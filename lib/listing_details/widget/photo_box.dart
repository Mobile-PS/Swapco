import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/const_image.dart';
import 'package:swapco/constants/constants.dart';

class PhotoBoxidget extends StatelessWidget {
  PhotoBoxidget({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      width: 77,
      alignment: Alignment.bottomRight,
      decoration: new BoxDecoration(
        border: new Border.all(
          color: Color.fromRGBO(128, 128, 128, 1),
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4)),
        image: DecorationImage(
          image: new AssetImage(constImage.modelImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Image.asset(
          constImage.penIcon,
          height: 22,
          width: 22,
        ),
      ),
    );
  }
}
