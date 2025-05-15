import 'package:get/get.dart';

import '../modules/detailProfile/bindings/detail_profile_binding.dart';
import '../modules/detailProfile/views/detail_profile_view.dart';
import '../modules/editProfile/bindings/edit_profile_binding.dart';
import '../modules/editProfile/views/edit_profile_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/scan/bindings/scan_binding.dart';
import '../modules/scan/views/scan_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/loading.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/splash/views/splash_page_1.dart';
import '../modules/splash/views/splash_page_2.dart';
import '../modules/splash/views/splash_page_3.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH1,
      page: () => SplashPage1(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH2,
      page: () => SplashPage2(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH3,
      page: () => SplashPage3(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOADING,
      page: () => LoadingPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PROFILE,
      page: () => const DetailProfileView(),
      binding: DetailProfileBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.SCAN,
      page: () => const ScanView(),
      binding: ScanBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
