import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/const_image.dart';
import 'package:swapco/constants/constants.dart';

class AddPhotoDotWidget extends StatelessWidget {
  AddPhotoDotWidget({Key? key, required this.camera}) : super(key: key);
  final bool camera;
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      dashPattern: [5, 6],
      radius: Radius.circular(4),
      strokeWidth: 1,
      padding: EdgeInsets.zero,
      color: Color.fromRGBO(128, 128, 128, 1),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        child: Container(
          height: 77,
          width: 77,
          color: camera ? Color.fromRGBO(242, 242, 242, 1) : Colors.white,
          child: camera ? Image.asset(constImage.cameraListing) : SizedBox(),
        ),
      ),
    );
  }
}
