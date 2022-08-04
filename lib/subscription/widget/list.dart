import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/subscription/widget/list_button.dart';

class ListTileSubWidget extends StatelessWidget {
  const ListTileSubWidget({Key? key, this.text, this.subtext})
      : super(key: key);
  final String? text;
  final String? subtext;

  @override
  Widget build(BuildContext context) {
    return (ListTile(
        title: Text(
          text!,
          style: TextStyle(
              fontSize: 17,
              color: Color.fromRGBO(38, 38, 38, 1),
              fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subtext!,
          style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(155, 155, 155, 1),
              fontWeight: FontWeight.w500),
        ),
        trailing: ListButton(text: "5.99")));
  }
}
