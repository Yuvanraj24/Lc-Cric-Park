import 'package:get/get.dart';
import 'package:lk_cric_park/presentation/splash/binding.dart';
import 'package:lk_cric_park/presentation/splash/splash_view.dart';

part 'routes.dart';

class AppRoutes {
  AppRoutes._();

  static const initial = Routes.splash;
  static final pages = [
    GetPage(
      name: _Paths.splash,
      binding: SplashBinding(),
      page: () => const SplashView(),
    ),
  ];
}
