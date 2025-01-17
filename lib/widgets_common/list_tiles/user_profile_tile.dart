import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/personalization/controllers/user_controller.dart';
import 'package:lk_cric_park/widgets_common/images/siaj_circlar_image.dart';


class SiajUserProfileTile extends StatelessWidget {
  const SiajUserProfileTile({
    super.key, this.onPress,
  });

  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {

    final controller = UserController.instance;
    return ListTile(
      leading:  SiajCircularImage(
        isImage: false,
        imageHolderText: controller.user.value.fullName.split('').first,
        image: AppImages.userDefault,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(controller.user.value.fullName,
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),
      ),
      subtitle:  Text(controller.user.value.email,
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white),
      ),
      trailing: IconButton(onPressed: onPress,
          icon: const Icon(Iconsax.edit, color: AppColors.white)),
    );
  }
}