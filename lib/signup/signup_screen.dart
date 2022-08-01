import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/const_image.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/dialog/dialog_button.dart';
import 'package:swapco/login/login_screen.dart';
import 'package:swapco/signup/widget/default_button.dart';
import 'package:swapco/signup/widget/privacy_policy.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreen createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  createDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () async => true,
              child: Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 303,
                        height: screenHeight(context) / 3.2,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Stack(alignment: Alignment.center, children: [
                          Positioned(
                              bottom: 120,
                              child: Container(
                                height: screenHeight(context) / 3.1,
                                width: screenWidth(context),
                                // margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                                decoration: BoxDecoration(
                                  borderRadius: new BorderRadius.all(
                                      Radius.elliptical(260, 180)),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: Ovalcolors),
                                ),
                              )),
                          Stack(alignment: Alignment.center, children: [
                            Positioned(
                                bottom: 80,
                                child: CircleAvatar(
                                  radius: 47.0,
                                  backgroundImage:
                                      AssetImage(constImage.person),
                                  backgroundColor: Colors.transparent,
                                )),
                            Positioned(
                                bottom: 40,
                                child: Image.asset(constImage.starWork))
                          ])
                        ]),
                      ),
                      Text(
                        'Congratulations',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(10, 111, 24, 1),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Your account is created successfully',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Welcome to SwapCo',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      DialogButton(
                        height: 44,
                        text: 'GET STARTED',
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(alignment: Alignment.center, children: <Widget>[
                Container(
                    height: screenHeight(context) / 2,
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(constImage.signupImage),
                        fit: BoxFit.fill,
                      ),
                    )),
                Positioned(
                    top: 65,
                    child: Text(
                      constString.createAccount,
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Positioned(
                    bottom: 56,
                    child: CircleAvatar(
                      radius: 68.0,
                      backgroundImage: AssetImage(constImage.person),
                      backgroundColor: Colors.transparent,
                    )),
                Positioned(
                    bottom: 55,
                    left: 215,
                    child: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage(constImage.pen_background),
                        backgroundColor: Colors.transparent,
                        child: Image.asset(constImage.pen)))
              ]),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Form(
                      key: _formkey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Container(
                          margin: EdgeInsets.only(left: 40.0, right: 40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder,
                                    fillColor: white,
                                    filled: true,
                                    hintText: 'First Name',
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder,
                                    fillColor: white,
                                    filled: true,
                                    hintText: 'Last Name',
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder,
                                    fillColor: white,
                                    filled: true,
                                    hintText: 'Email Address',
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder,
                                    fillColor: white,
                                    filled: true,
                                    hintText: 'User Name',
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value!.trim().isEmpty) {
                                    return 'Please enter password';
                                  }

                                  return null;
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder,
                                    fillColor: white,
                                    filled: true,
                                    hintText: 'Password',
                                    suffixIcon: IconButton(
                                        icon: Icon(Icons.visibility,
                                            //change icon based on boolean value
                                            color: Colors.black),
                                        onPressed: () {}),
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder,
                                    fillColor: white,
                                    filled: true,
                                    hintText: 'Country',
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder,
                                    fillColor: white,
                                    filled: true,
                                    hintText: 'State',
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder,
                                    fillColor: progressDefault,
                                    filled: true,
                                    hintText: 'City',
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: DefaultButton(
                                          press: () {
                                            createDialog(context);
                                          },
                                          text: 'Create Account',
                                          height: 48)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account?",
                                    style: TextStyle(
                                        fontSize: 16, color: primaryColor1),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Get.to(LoginScreen());
                                      },
                                      child: Text(
                                        ' Signin',
                                        style: TextStyle(
                                            fontSize: 18, color: buttonColor),
                                      )),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ))),
                ],
              ),
              Container(
                  padding: EdgeInsets.all(26),
                  color: termsBackColor,
                  child: Text(
                    constString.terms,
                    style: TextStyle(fontSize: 14, color: termsColor),
                  ))
            ],
          ),
        ));
  }
}
