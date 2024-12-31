import 'package:get/get.dart';

class SplashController extends GetxController {

  static SplashController get instance => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 2),() {
      // AuthService.screenRedirect();
    });
  }
}