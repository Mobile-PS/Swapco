import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({Key? key, this.text, this.title}) : super(key: key);
  final String? text;
  final String? title;

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String dropdownValue = 'Womens';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Category',
            style:
                TextStyle(fontSize: 17, color: Color.fromRGBO(74, 74, 74, 1))),
        Container(
          color: filterWidgetsColor,
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.all(10),
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
    );
  }
}
