import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/assets/texts.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/authentication/screens/signup/widgets/signup_form.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSizes.appBarHeight * 2),

                /// Title
                Text(
                  AppTextStrings.signUp,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
      
                const SizedBox(height: AppSizes.spaceBtwSections),
      
                /// Form
                const SiajSignUpForm(),
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}


