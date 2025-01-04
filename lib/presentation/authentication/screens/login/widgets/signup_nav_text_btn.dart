import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/routes/pages.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/authentication/controllers/login/login_controller.dart';

class LoginSignupNavBtn extends GetView<LoginController> {
  const LoginSignupNavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => Get.toNamed(Routes.signup),
        child: RichText(text:  TextSpan(
            text: AppTextStrings.loginSignUpLabelText,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: AppColors.greyLight
            ),
            children: [
              TextSpan(
                text:AppTextStrings.loginSignUpBtnText,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: Colors.orangeAccent,
                    fontWeightDelta: 5
                ),
              ),
            ]
        )),
      ));
  }
}