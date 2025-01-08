import 'package:flutter/material.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/utils/device/device_utility.dart';
import 'package:lk_cric_park/utils/helpers/helper_functions.dart';

class SiajTabBar extends StatelessWidget implements PreferredSizeWidget {
  const SiajTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {

    final bool darkMode = SiajHelperFunctions.isDarkMode(context);
    return Material(
      color: darkMode ? AppColors.black : AppColors.white,
      child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: AppColors.primaryColor,
          unselectedLabelColor: AppColors.darkGrey,
          labelColor: darkMode ? AppColors.white : AppColors.primaryColor,
          ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SiajDeviceUtils.getAppBarHeight());
}