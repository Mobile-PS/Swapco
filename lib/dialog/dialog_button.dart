import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({Key? key, this.text, this.press, this.height})
      : super(key: key);
  final String? text;
  final double? height;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => press!(),
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width / 1.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                buttonColor,
                primaryColor,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
