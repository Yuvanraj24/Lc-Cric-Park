import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk_cric_park/core/theme/color.dart';
import 'package:lk_cric_park/presentation/main/controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
        bottomNavigationBar: Obx(
                () => NavigationBar(
                height: 80,
                elevation: 0,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) => controller.selectedIndex.value = index,
                backgroundColor: AppColors.light,
                indicatorColor:  AppColors.primaryColor.withValues(alpha:.1),
                destinations:  controller.iconTabs
                )
        )
      ),
    );
  }
}
