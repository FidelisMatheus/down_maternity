// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:projeto_sindrome_down/pages/details_page.dart';
import 'package:projeto_sindrome_down/pages/home_page.dart';
import 'package:projeto_sindrome_down/pages/login_page.dart';
import 'package:projeto_sindrome_down/pages/register_user_screen.dart';
import 'package:projeto_sindrome_down/pages/sobre_page.dart';
import 'package:projeto_sindrome_down/pages/splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splash-screen';
  static const String initial = '/';
  static const String homeScreen = '/home';
  static const String aboutScreen = '/about';
  static const String detailsScreen = '/details';
  static const String registerUserScreen = '/register';

  static String getSplashScreen() => splashScreen;
  static String getInitial() => initial;
  static String getHomeScreen() => homeScreen;
  static String getRegisterScreen() => registerUserScreen;
  static String getAboutScreen() => aboutScreen;

  static String getDetailsScreen(int id, String title) => '$detailsScreen?id=$id&title=$title';

  static List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: initial,
      page: () => LoginPage(),
    ),
    GetPage(
      name: homeScreen,
      page: () => HomePage(),
    ),
    GetPage(
      name: registerUserScreen,
      page: () => RegisterUserScreen(),
    ),
    GetPage(
      name: aboutScreen,
      page: () => SobrePage(),
    ),
    GetPage(
      name: detailsScreen,
      page: () {
        var id = Get.parameters['id'];
        var title = Get.parameters['title'];
        return DetailsPage(id: int.parse(id!), title: title!);
      },
    ),
  ];
}
