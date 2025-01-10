import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lk_cric_park/core/constants/app_sizes.dart';
import 'package:lk_cric_park/core/routes/pages.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/data/firebase/authentication/authentication_repository.dart';
import 'package:lk_cric_park/presentation/personalization/controllers/user_controller.dart';
import 'package:lk_cric_park/widgets_common/appbar/appbar.dart';
import 'package:lk_cric_park/widgets_common/custom_shapes/containers/primary_header_container.dart';
import 'package:lk_cric_park/widgets_common/list_tiles/settings_menu_tile.dart';
import 'package:lk_cric_park/widgets_common/list_tiles/user_profile_tile.dart';
import 'package:lk_cric_park/widgets_common/texts/section_heading.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            SiajPrimaryHeaderContainer(
                child: Column(
              children: [
                /// Appbar
                SiajAppBar(
                  title: Text("Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AppColors.appWhite)),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// User Profile Card
                SiajUserProfileTile(onPress: () {}),

                const SizedBox(height: AppSizes.spaceBtwSections)
              ],
            )),

            /// Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Setting
                  const SiajSectionHeading(title: "Account Settings",showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  SiajSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: "My Addresses",
                      subTitle: "Set shopping delivery address",
                      onTap: () {}),
                  const SiajSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: "My Cart",
                      subTitle: "Add, remove products and move to checkout"),
                  SiajSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In-progress and Completed Orders",
                    onTap: () {},
                  ),
                  const SiajSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: "Bank Account",
                      subTitle: "Withdraw balance to registered bank account"),
                  const SiajSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: "My Coupons",
                      subTitle: "List of all the discounted coupons"),
                  const SiajSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: "Notifications",
                      subTitle: "Set any kind of notification message"),
                  const SiajSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: "Account Privacy",
                      subTitle: "Manage data usage and connected accounts"),

                  /// App Settings
                  /*
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  const SiajSectionHeading(
                      title: "App Settings", showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                   SiajSettingsMenuTile(
                      onTap: () {},
                      icon: Iconsax.document_upload,
                      title: "Load Data",
                      subTitle: "Upload Data to your Cloud Firebase"),

                  /// Tile with Switch button
                  SiajSettingsMenuTile(
                      icon: Iconsax.location,
                      title: "Geolocation",
                      subTitle: "Set recommendation based on location",
                      trailing: Switch(value: false, onChanged: (value) {})),
                  SiajSettingsMenuTile(

                      icon: Iconsax.security_user,
                      title: "Safe Mode",
                      subTitle: "Search result is safe for all ages",
                      trailing: Switch(value: true, onChanged: (value) {})),
                  SiajSettingsMenuTile(
                      icon: Iconsax.image,
                      title: "HD Image Quality",
                      subTitle: "Set image quality to be seen",
                      trailing: Switch(value: true, onChanged: (value) {})),

                  */

                  const SizedBox(height: AppSizes.spaceBtwSections),

                  /// Logout Button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () => AuthenticationRepository.instance.logout(), child: const Text("Logout")),
                  ),

                  const SizedBox(height: AppSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
