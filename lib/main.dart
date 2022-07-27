import 'dart:io';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/routes/routes.dart';




String initialRoute = '/';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme(),
      themeMode: ThemeMode.light,
      initialRoute: initialRoute,
      getPages: pages(),
    );
  }
}

class InitialBindings extends Bindings {
  Dio _dio() {
    var dio = Dio();

    dio.interceptors.addAll([
      // LoggingInterceptor(),
    ]);

    return dio;
  }

  @override
  void dependencies() {
    Get.put(_dio());
  }
}

ThemeData lightTheme() {
  var baseTheme = ThemeData.light();
  baseTheme.textTheme.apply(fontFamily: 'Inter');
  baseTheme.copyWith(
      scaffoldBackgroundColor: primaryColor,
      colorScheme: baseTheme.colorScheme.copyWith(
        primary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
      ));

  return baseTheme;
}
