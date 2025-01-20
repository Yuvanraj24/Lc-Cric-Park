import 'package:get/get.dart';
import 'package:lk_cric_park/data/repositories/authentication/authentication_repository.dart';

class SplashController extends GetxController {

  static SplashController get instance => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 2),() {
      AuthenticationRepository.instance.screenRedirect();
    });
  }
}