import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key, this.text, this.image}) : super(key: key);
  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return (ListTile(
      title: Text(text!),
      leading: Image.asset(image!),
    ));
  }
}
