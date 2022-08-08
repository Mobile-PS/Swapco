import 'package:flutter/cupertino.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/filter/widget/size_container.dart';

class SizeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Size',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(74, 74, 74, 1))),
          Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizeContainerWidget(
                    color: filterWidgetsColor,
                    text: 'XS',
                  ),
                  SizeContainerWidget(
                    color: filterWidgetsColor,
                    text: 'S',
                  ),
                  SizeContainerWidget(
                    color: selectedSizeColor,
                    text: 'M',
                  ),
                  SizeContainerWidget(
                    color: filterWidgetsColor,
                    text: 'L',
                  ),
                  SizeContainerWidget(
                    color: filterWidgetsColor,
                    text: 'XL',
                  ),
                  SizeContainerWidget(
                    color: filterWidgetsColor,
                    text: 'XXL',
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
