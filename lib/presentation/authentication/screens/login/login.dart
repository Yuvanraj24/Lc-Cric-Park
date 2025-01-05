import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/authentication/screens/login/widgets/login_form.dart';
import 'package:lk_cric_park/presentation/authentication/screens/login/widgets/login_header.dart';
import 'package:lk_cric_park/presentation/authentication/screens/login/widgets/signup_nav_text_btn.dart';
import 'package:lk_cric_park/utils/styles/spacing_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: SiajSpacingStyle.paddingWithAppBarHeight,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            /// Logo title & sub-title
            const SiajLoginHeader(),
        
            /// Form
            const SiajLoginForm(),

            /// Navigation Btn
            LoginSignupNavBtn()

          ]),
        ),
      ),
    );
  }
}
