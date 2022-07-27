import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/common.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';
import 'package:swapco/login/default_button1.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:  Stack(children: [
              Container(
                height: screenHeight(context),
                width: screenWidth(context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(constImage.loginImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: screenHeight(context),
                  width: screenWidth(context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        startColor1,
                        startColor2,
                        startColor3
                      ],
                    ),
                  )),

                        SingleChildScrollView(
                         child:
              Column(children: [
                SizedBox(height: screenHeight(context) / 8,),
                Center(child: Image.asset(
                  constImage.logoImage, height: 80.0, width: 40.0,),),
                SizedBox(height: 5.0,),
                Center(child: Image.asset(
                  constImage.nameImage, height: 80.0, width: 150.0,),),
                Form(
                    key: _formkey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Container(
                        margin: EdgeInsets.only(left: 40.0, right: 40.0),
                        child:
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              TextFormField(
                                autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                              style: TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter username';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder1,
                                    fillColor: transparent,
                                    filled: true,
                                    hintText: 'User Name/Email Address',
                                    hintStyle: TextStyle(color: Colors.white),
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder1),

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
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(16),
                                    border: customBorder1,
                                    fillColor: transparent,
                                    filled: true,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.white),
                                    suffixIcon: IconButton(
                                        icon: Icon(
                                            Icons.visibility,
                                            //change icon based on boolean value
                                            color: Colors.white),
                                        onPressed: () {
                                        }),
                                    errorBorder: customerrorBorder,
                                    focusedBorder: customfocusBorder,
                                    enabledBorder: customBorder1),
                              ),
                              SizedBox(height: 10.0,),

                              Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 25.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: DefaultButton1(
                                          press: () {
                                            if (_formkey.currentState!
                                                .validate()) {

                                            }
                                          },
                                          text: 'Sign In',
                                          height: 48)),
                                ],
                              ),
                              Image.asset(constImage.orImage, height: 80.0),

                              Image.asset(constImage.googleImage, height: 80.0),

                              Image.asset(constImage.facebbokImage, height: 80.0),

                              SizedBox(height: 20,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don’t have an account?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: white),
                                  ),
                                  InkWell(onTap: () {

                                  },child:
                                  Text(
                                    'Create one.',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: buttonColor),
                                  )),

                                ],),
                              SizedBox(height: 20),


                            ]))),


              ],))

            ]));
  }
}
