import 'package:get/get.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/signup/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignupController());
  }

}