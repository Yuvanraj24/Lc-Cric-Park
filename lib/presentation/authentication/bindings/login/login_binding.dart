import 'package:get/get.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }

}