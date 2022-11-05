import 'package:app_find_house/app/routes/app_routes.dart';
import 'package:app_find_house/app/ui/views/home/home_binding.dart';
import 'package:app_find_house/app/ui/views/home/home_view.dart';
import 'package:app_find_house/app/ui/views/login/login_binding.dart';
import 'package:app_find_house/app/ui/views/login/login_view.dart';
import 'package:app_find_house/app/ui/views/signup/signup_binding.dart';
import 'package:app_find_house/app/ui/views/signup/signup_view.dart';
import 'package:app_find_house/app/ui/views/splash/splash_binding.dart';
import 'package:app_find_house/app/ui/views/splash/splash_view.dart';
import 'package:get/get.dart';

abstract class AppViews {
  static final views = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGNUP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
