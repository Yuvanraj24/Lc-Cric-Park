import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lk_cric_park/core/routes/pages.dart';
import 'package:lk_cric_park/utils/local_storage/functions/app_storage_functions.dart';

class MainController extends GetxController {

  static MainController get instance => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  final RxInt selectedIndex = 2.obs;

  final List<Widget> screens = [
    Center(child: InkWell(
        onTap: (){
          AppLocalStorageFunctions.clearAllData();
          Get.offAllNamed(Routes.login);
        },
        child: Text("Home"))),
    Center(child: Text("Location")),
    Center(child: Text("Profile")),
  ];

  final iconTabs = <NavigationDestination> [
      NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
      NavigationDestination(icon: Icon(Iconsax.location), label: "Location"),
      NavigationDestination(icon: Icon(Iconsax.user), label: "Profile")
  ];

}