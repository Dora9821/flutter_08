import 'package:flutter_08/feature/login/login_view.dart';
import 'package:flutter_08/home/home_view.dart';
import 'package:flutter_08/signup.dart';
import 'package:get/get.dart';

class AppRouter {
  static final routes = [
    //Login
    GetPage(
      name: AppRouterNamed.login,
      page: () => LoginPage(title: ''),
    ),
    //SignUp
    GetPage(
      name: AppRouterNamed.signUp,
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: AppRouterNamed.homepage,
      page: () => const HomePage(),
    ),
  ];
}

class AppRouterNamed {
  static const login = '/';
  static const signUp = '/signup';
  static const homepage = '/homepage';
}
