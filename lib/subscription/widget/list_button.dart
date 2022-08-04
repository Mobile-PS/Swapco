import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class ListButton extends StatelessWidget {
  const ListButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(), primary: Colors.red, elevation: 0),
      onPressed: () {
        press;
      },
      child: Text(text!,
          style: TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.w700)),
    );
  }
}
