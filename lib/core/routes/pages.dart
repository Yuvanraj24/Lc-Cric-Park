import 'package:get/get.dart';
import 'package:lk_cric_park/presentation/authentication/bindings/login/login_binding.dart';
import 'package:lk_cric_park/presentation/authentication/bindings/onboarding/onboarding_binding.dart';
import 'package:lk_cric_park/presentation/authentication/bindings/signup/signup_binding.dart';
import 'package:lk_cric_park/presentation/authentication/bindings/signup/verification_email_binding.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:lk_cric_park/presentation/authentication/screens/login/login.dart';
import 'package:lk_cric_park/presentation/authentication/screens/onboarding/onboarding.dart';
import 'package:lk_cric_park/presentation/authentication/screens/signup/signup.dart';
import 'package:lk_cric_park/presentation/authentication/screens/signup/verify_email.dart';
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
    GetPage(
      name: _Paths.onboarding,
      binding: OnboardingBinding(),
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: _Paths.login,
      binding: LoginBinding(),
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: _Paths.signup,
      binding: SignupBinding(),
      page: () => const SignupScreen(),
    ),

    GetPage(
      name: _Paths.verifyEmailView,
      binding: VerificationEmailBinding(),
      page: () => const VerifyEmailScreen(),
    ),



  ];
}
