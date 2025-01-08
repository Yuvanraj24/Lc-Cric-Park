import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/presentation/personalization/controllers/user_controller.dart';
import 'package:lk_cric_park/utils/validators/validation.dart';
import 'package:lk_cric_park/widgets_common/appbar/appbar.dart';


class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar:
          const SiajAppBar(title: Text("Re-Authenticate User"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Form(
              key: controller.reAuthFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Email
                  TextFormField(
                      controller: controller.verifyEmail,
                      validator: SiajValidator.validateEmail,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: AppTextStrings.email)),

                  const SizedBox(height: AppSizes.spaceBtwInputFields),

                  /// Password
                  Obx(
                    () => TextFormField(
                        obscureText: controller.hidePassword.value,
                        controller: controller.verifyPassword,
                        validator: (value) =>
                            SiajValidator.validateEmptyText("Password", value),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Iconsax.password_check),
                            labelText: AppTextStrings.password,
                            suffixIcon: IconButton(
                                onPressed: () => controller.hidePassword.value =
                                    !controller.hidePassword.value,
                                icon: Icon(controller.hidePassword.value
                                    ? Iconsax.eye_slash
                                    : Iconsax.eye)))),
                  ),

                  const SizedBox(height: AppSizes.spaceBtwSections),

                  /// Login Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Verify")),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
