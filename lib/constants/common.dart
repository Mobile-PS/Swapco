import 'dart:developer';
import 'dart:io';


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/const_string.dart';


import 'const_color.dart';


printLog(dynamic value) {
  if (kDebugMode) {
    log("--------- App logs ---------\n$value");
  }
}

Future<bool?> toast(String message) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black54,
    textColor: Colors.white,
    fontSize: 15.0,
  );
}

showSnackbar(String message, [int timeInSec = 3]) {
  Get.showSnackbar(GetSnackBar(
    message: message,
    duration: Duration(seconds: timeInSec),
    snackStyle: SnackStyle.FLOATING,
  ));
}



screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

screenHeight(BuildContext context) => MediaQuery.of(context).size.height;


startLoader(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return WillPopScope(
          onWillPop: () async => false,
          child:
       Container(
        color: Colors.black.withOpacity(0.1),
        child: Center(
          child: CircularProgressIndicator(
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(primaryColor))
        ),
      ));
    },
  );
}


hideKeyBoard() => SystemChannels.textInput.invokeMethod('TextInput.hide');




Future<void> showImageSelectionDialog(
    BuildContext context,
    Function() onGalleryTapped,
    Function() onCameraTapped,
    ) {
  final strings = ConstString();
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              InkWell(
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      strings.choosePhoto,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.back();
                    onGalleryTapped.call();
                  }),
              const Padding(padding: EdgeInsets.all(8.0)),
              InkWell(
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(strings.takePhoto,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                onTap: () {
                  Get.back();
                  onCameraTapped.call();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}

