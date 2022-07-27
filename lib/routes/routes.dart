
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';
import 'package:swapco/login/login_screen.dart';
import 'package:swapco/signup/signup_screen.dart';


List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => SignupScreen(),
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
