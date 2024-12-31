import 'package:get/get.dart';
import 'package:lk_cric_park/presentation/splash/controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}