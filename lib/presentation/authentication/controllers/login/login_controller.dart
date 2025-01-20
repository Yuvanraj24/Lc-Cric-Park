import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/data/repositories/authentication/authentication_repository.dart';
import 'package:lk_cric_park/data/services/network_manager/network_manager.dart';
import 'package:lk_cric_park/utils/popups/full_screen_loader.dart';
import 'package:lk_cric_park/widgets_common/custom_toasts/toasts.dart';

class LoginController extends GetxController {
  /// Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read("REMEMBER_ME_EMAIL") ?? "";
    password.text = localStorage.read("REMEMBER_ME_PASSWORD") ?? "";
    super.onInit();
  }

  /// Email & Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start Loading
      SiajFullScreenLoader.openLoadingDialog(
          "Logging you in...", AppImages.authLottie);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SiajFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        SiajFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if Remember Me is selected
      if (rememberMe.value) {
        localStorage.write("REMEMBER_ME_EMAIL", email.text.trim());
        localStorage.write("REMEMBER_ME_PASSWORD", password.text.trim());
      }

      // Login user using Email & Password Authentication
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      // Remove Loader
      SiajFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // show some Generic Error to the user
      SiajFullScreenLoader.stopLoading();
      SiajToasts.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }

}
