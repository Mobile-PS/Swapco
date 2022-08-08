import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({Key? key, this.list, this.title}) : super(key: key);
  final List<String>? list;
  final String? title;

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String dropdownValue = 'Womens';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title!,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(74, 74, 74, 1))),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: filterWidgetsColor,
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
