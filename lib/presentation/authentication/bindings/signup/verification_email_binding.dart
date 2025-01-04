import 'package:get/get.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/signup/verify_email_controller.dart';

class VerificationEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VerifyEmailController());
  }

}