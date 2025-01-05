import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/signup/signup_controller.dart';
import 'package:lk_cric_park/presentation/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:lk_cric_park/utils/validators/validation.dart';

class SiajSignUpForm extends GetView<SignupController> {
  const SiajSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            ///First & Last Name
            Row(children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      SiajValidator.validateEmptyText("First Name", value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: AppTextStrings.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      SiajValidator.validateEmptyText("Last Name", value),
                  expands: false,

                  decoration: const InputDecoration(
                      labelText: AppTextStrings.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ]),

            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => SiajValidator.validateEmail(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: AppTextStrings.email,
                  prefixIcon: Icon(Iconsax.direct)),

            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// Phone number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => SiajValidator.validatePhoneNumber(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: AppTextStrings.phoneNo,
                  prefixIcon: Icon(Iconsax.call)),
            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// Team Name
            TextFormField(
              controller: controller.teamName,
              validator: (value) => SiajValidator.validateEmptyText(AppTextStrings.teamName,value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: AppTextStrings.teamName,
                  prefixIcon: Icon(Iconsax.people)),
            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// Team Captain Team
            TextFormField(
              controller: controller.teamCaptainName,
              validator: (value) => SiajValidator.validateEmptyText(AppTextStrings.teamCaptainName,value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: AppTextStrings.teamCaptainName,
                  prefixIcon: Icon(Iconsax.personalcard)),
            ),

            const SizedBox(height: AppSizes.spaceBtwInputFields),

            /// Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => SiajValidator.validatePassword(value),
                expands: false,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    labelText: AppTextStrings.password,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: Icon(controller.hidePassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye))),
              ),
            ),

            const SizedBox(height: AppSizes.spaceBtwSections),

            /// Terms & Conditions Checkbox
            const SiajTermsAndConditionCheckBox(),

            const SizedBox(height: AppSizes.spaceBtwSections),

            /// Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.signUp(),
                child: Text(AppTextStrings.signUp),
              ),
            )
          ],
        ));
  }
}
