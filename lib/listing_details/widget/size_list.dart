import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/filter/widget/size_container.dart';
import 'package:swapco/listing_details/widget/size_container.dart';

class SizeListingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Size',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(74, 74, 74, 1))),
          Container(
              height: 33,
              width: screenWidth(context) / 1.46,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizeContainerListingWidget(
                      color: Colors.white,
                      text: 'XS',
                    ),
                    SizeContainerListingWidget(
                      color: Colors.white,
                      text: 'S',
                    ),
                    SizeContainerListingWidget(
                      color: selectedSizeColor,
                      text: 'M',
                    ),
                    SizeContainerListingWidget(
                      color: Colors.white,
                      text: 'L',
                    ),
                    SizeContainerListingWidget(
                      color: Colors.white,
                      text: 'XL',
                    ),
                    SizeContainerListingWidget(
                      color: Colors.white,
                      text: 'XXL',
                    ),
                    SizeContainerListingWidget(
                      color: Colors.white,
                      text: 'XXXL',
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
