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

  final RxInt selectedIndex = 3.obs;

  final List<Widget> screens = [
    Center(child: InkWell(
        onTap: (){
          AppLocalStorageFunctions.clearAllData();
          Get.offAllNamed(Routes.login);

        },
        child: Text("Home"))),
    Center(child: Text("Store")),
    Center(child: Text("Cart")),
    Center(child: Text("Profile")),
  ];

  final iconTabs = <NavigationDestination> [
      NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
      NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
      NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: "Cart"),
      NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
  ];

}