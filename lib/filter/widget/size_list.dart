import 'package:flutter/cupertino.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/filter/widget/size_container.dart';

class SizeList extends StatelessWidget {
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
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizeContainerWidget(
                  color: selectedSizeColor,
                  text: 'a',
                ),
                SizeContainerWidget(
                  color: selectedSizeColor,
                  text: 'a',
                ),
                SizeContainerWidget(
                  color: selectedSizeColor,
                  text: 'a',
                ),
                SizeContainerWidget(
                  color: selectedSizeColor,
                  text: 'a',
                ),
                SizeContainerWidget(
                  color: filterWidgetsColor,
                  text: 'a',
                ),
                SizeContainerWidget(
                  color: filterWidgetsColor,
                  text: 'a',
                ),
              ],
            )),
      ],
    );
  }
}
