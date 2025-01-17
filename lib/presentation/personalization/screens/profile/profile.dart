import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/presentation/personalization/controllers/user_controller.dart';
import 'package:lk_cric_park/presentation/personalization/screens/profile/widgets/change_name.dart';
import 'package:lk_cric_park/presentation/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:lk_cric_park/widgets_common/appbar/appbar.dart';
import 'package:lk_cric_park/widgets_common/images/siaj_circlar_image.dart';
import 'package:lk_cric_park/widgets_common/shimmers/shimmer_effect.dart';
import 'package:lk_cric_park/widgets_common/texts/section_heading.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserController());
    final controller = UserController.instance;
    return Scaffold(
      appBar: const SiajAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                      final networkImage = "";
                      final image = networkImage.isNotEmpty
                          ? networkImage
                          : AppImages.userDefault;

                      return controller.imageUploading.value
                          ? const SiajShimmerEffect(
                              width: 80, height: 80, radius: 80)
                          : SiajCircularImage(
                              isImage: false,
                              imageHolderText: controller.user.value.fullName,
                              image: image,
                              width: 80,
                              height: 80,
                              isNetworkImage: networkImage.isNotEmpty);
                    }),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              const SiajSectionHeading(
                  title: "Profile Information", showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              SiajProfileMenu(
                /// Screen want to create
                onPressed: () {
                      // Get.to(() => const ChangeName())
                },
                title: "Name",
                value: controller.user.value.fullName,
              ),

              const SizedBox(height: AppSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Heading Personal Info
              const SiajSectionHeading(
                  title: "Personal Information", showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              SiajProfileMenu(
                onPressed: () {},
                title: "User ID",
                value: controller.user.value.id,
              ),
              SiajProfileMenu(
                onPressed: () {},
                title: "E-mail",
                value: controller.user.value.email,
              ),
              SiajProfileMenu(
                onPressed: () {},
                title: "Phone Number",
                value: controller.user.value.phoneNumber,
              ),
              SiajProfileMenu(
                onPressed: () {},
                title: "Gender",
                value: "Male",
              ),
              SiajProfileMenu(
                onPressed: () {},
                title: "Date of Birth",
                value: "24 Dec 2000",
              ),

              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Close Account",
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
