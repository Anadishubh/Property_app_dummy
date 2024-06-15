import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:nestsuche2/pages/home_page.dart';
import 'package:nestsuche2/pages/login_page.dart';
import 'package:nestsuche2/pages/map_page.dart';
import 'package:nestsuche2/pages/options.dart';
import 'package:nestsuche2/pages/signup_page.dart';
import '../custom/default_page.dart';
import '../splash screen/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String language = '/language';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String option = '/option';
  static const String map = '/map';

  static final List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
      name: language,
      page: () => const LanguageScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
        name: login,
        page: () => const LoginPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: signup,
        page: () => const SignupPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: home,
        page: () => const HomePage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: option,
        page: () => const Options(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
        name: map,
        page: () => const MapPage(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
  ];
}
