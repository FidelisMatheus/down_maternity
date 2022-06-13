// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:projeto_sindrome_down/pages/details_page.dart';
import 'package:projeto_sindrome_down/pages/forgot_password_page.dart';
import 'package:projeto_sindrome_down/pages/home_page.dart';
import 'package:projeto_sindrome_down/pages/login_page.dart';
import 'package:projeto_sindrome_down/pages/register_user_page.dart';
import 'package:projeto_sindrome_down/pages/about_page.dart';
import 'package:projeto_sindrome_down/pages/splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splash-screen';
  static const String initial = '/';
  static const String forgotPassworScreen = '/forgot-password';
  static const String homeScreen = '/home';
  static const String aboutScreen = '/about';
  static const String detailsScreen = '/details';
  static const String registerUserScreen = '/register';

  static String getSplashScreen() => splashScreen;
  static String getInitial() => initial;
  static String getForgotPassword() => forgotPassworScreen;
  static String getHomeScreen() => homeScreen;
  static String getRegisterScreen() => registerUserScreen;
  static String getAboutScreen() => aboutScreen;

  static String getDetailsScreen(int id, String title, String pathImage) =>
      '$detailsScreen?id=$id&title=$title&path=$pathImage';

  static List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: initial,
      page: () => LoginPage(),
      transition: Transition.upToDown,
    ),
    GetPage(
      name: forgotPassworScreen,
      page: () => ForgotPasswordScreen(),
      transition: Transition.upToDown,
    ),
    GetPage(
      name: homeScreen,
      page: () => HomePage(),
      transition: Transition.upToDown,
    ),
    GetPage(
      name: registerUserScreen,
      page: () => RegisterUserPage(),
      transition: Transition.upToDown,
    ),
    GetPage(
      name: aboutScreen,
      page: () => AboutPage(),
      transition: Transition.upToDown,
    ),
    GetPage(
      name: detailsScreen,
      page: () {
        var id = Get.parameters['id'];
        var title = Get.parameters['title'];
        var path = Get.parameters['path'];
        return DetailsPage(
          id: int.parse(id!),
          title: title!,
          image: path!,
        );
      },
      transition: Transition.upToDown,
    ),
  ];
}
