import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/utils/validators/validation.dart';

import '../../../controllers/login/login_controller.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';

class SiajLoginForm extends StatelessWidget {
  const SiajLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppSizes.spaceBtwSections),
          child: Column(
            children: [
              ///Email
              TextFormField(
                controller: controller.email,
                validator:(value) => SiajValidator.validateEmail(value),
                decoration:  InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: AppTextStrings.email),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputFields),

              ///Password
              Obx(
                () => TextFormField(
                  controller: controller.password,
                  validator: (value) => SiajValidator.validateEmptyText("Password",value),
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.password_check),
                      labelText: AppTextStrings.password,
                      suffixIcon: IconButton(onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, icon: Icon(
                          controller.hidePassword.value?
                          Iconsax.eye_slash : Iconsax.eye))
                  ),
                ),
              ),

              const SizedBox(height: AppSizes.spaceBtwInputFields),

              ///Remember Me & Forget Password
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Remember Me
                    Row(children: [
                      Obx(() => Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value)),
                       Text(AppTextStrings.rememberMe)
                    ]),

                    /// Forget Password
                    TextButton(
                        onPressed: () => Get.to(() => const ForgetPassword()),
                        child:  Text(AppTextStrings.forgetPassword)),
                  ]),

              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Sign In Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>  controller.emailAndPasswordSignIn(), child: const Text(AppTextStrings.signIn))),


            ],
          ),
        ));
  }
}