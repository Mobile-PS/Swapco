import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';
import 'package:swapco/dialog/accept.dart';
import 'package:swapco/dialog/coin_swap.dart';
import 'package:swapco/dialog/first.dart';
import 'package:swapco/dialog/its_match.dart';
import 'package:swapco/dialog/lets_swap.dart';
import 'package:swapco/dialog/selection_method/selection_method.dart';
import 'package:swapco/filter/filter_screen.dart';
import 'package:swapco/login/login_screen.dart';
import 'package:swapco/my_closet/my_closet_screen.dart';
import 'package:swapco/profile/profile_screen.dart';
import 'package:swapco/signup/signup_screen.dart';
import 'package:swapco/subscription/subscription_screen.dart';
import 'package:swapco/utility/coin_count.dart';

List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => FilterScreen(),
  ),
  GetPage(
    name: '/login_screen',
    page: () => LoginScreen(),
  ),
  /*GetPage(
    name: '/main',
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: '/home',
    page: () => TodayScreen(),
  ),
  GetPage(
    name: '/general_screen',
    page: () => GeneralDetailScreen(),
  ),
  GetPage(
    name: '/dmc_screen',
    page: () => DMCListScreen(),
  ),*/
];

// note that you can create separated file for grouped route
List<GetPage> pages() {
  return routes;
}
