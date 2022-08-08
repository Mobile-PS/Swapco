import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/const_image.dart';
import 'package:swapco/constants/constants.dart';

class LocationWidget extends StatelessWidget {
  LocationWidget({Key? key, this.list, this.title}) : super(key: key);
  final List<String>? list;
  final String? title;

  String dropdownValue = 'Womens';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title!,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(74, 74, 74, 1))),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: filterWidgetsColor,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Row(
              children: [
                Text('Current location',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(38, 38, 40, 1))),
                SizedBox(width: 10),
                Text('(Seattle)',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(155, 155, 155, 1))),
                Spacer(),
                Image.asset(constImage.navigation)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
