import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/filter/widget/dropdown.dart';
import 'package:swapco/filter/widget/size_list.dart';
import 'package:swapco/listing_details/widget/add_photo.dart';
import 'package:swapco/listing_details/widget/add_photo_button.dart';
import 'package:swapco/listing_details/widget/photo_box.dart';
import 'package:swapco/utility/simple_button_widget.dart';

class ListingDetailsScreen extends StatefulWidget {
  @override
  _ListingDetailsScreen createState() => _ListingDetailsScreen();
}

class _ListingDetailsScreen extends State<ListingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              height: screenHeight(context) / 6,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topCenter,
                  colors: [
                    buttonColor,
                    primaryColor,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 25,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Listing Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Icon(Icons.close, color: Colors.white, size: 25)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Photos',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: selectedSizeColor,
                  fontSize: 30,
                ),
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select upto 16 photos',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(130, 130, 130, 1),
                    fontSize: 16,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PhotoBoxidget(image: constImage.modelImage),
                AddPhotoDotWidget(
                  camera: true,
                ),
                AddPhotoDotWidget(
                  camera: false,
                ),
                AddPhotoDotWidget(
                  camera: false,
                ),
              ],
            ),
            AddMoreButtonWidget(
              text: 'Add More Photos',
            ),
            SizeList(),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                SimpleButtonWidget(
                  text: 'Save Draft',
                  color: Colors.green,
                  height: 44,
                  width: screenWidth(context) / 2.5,
                ),
                SimpleButtonWidget(
                  text: 'Discard',
                  color: Colors.red,
                  height: 44,
                  width: screenWidth(context) / 2.5,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
