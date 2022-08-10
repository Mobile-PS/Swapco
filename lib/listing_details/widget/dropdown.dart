import 'package:flutter/material.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class DropdownListingWidget extends StatefulWidget {
  const DropdownListingWidget({Key? key, this.list, this.title})
      : super(key: key);
  final List<String>? list;
  final String? title;

  @override
  State<DropdownListingWidget> createState() => _DropdownListingWidget();
}

class _DropdownListingWidget extends State<DropdownListingWidget> {
  String dropdownValue = 'Womens';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title!,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(74, 74, 74, 1))),
          Container(
            height: 30,
            width: screenWidth(context) / 1.46,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromRGBO(174, 174, 174, 1)),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: DropdownButton<String>(
              value: dropdownValue,
              isExpanded: true,
              icon: Image.asset(constImage.downArrow),
              elevation: 16,
              underline: SizedBox(),
              style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {},
              items: <String>['Womens', 'Mens', 'Kids']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
