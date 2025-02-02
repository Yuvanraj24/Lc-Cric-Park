import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lk_cric_park/core/routes/pages.dart';
import 'package:lk_cric_park/presentation/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///Variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  /// Update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current index & Jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      final storage = GetStorage();
      storage.write("isFirstTime", false);
      Get.offAllNamed(Routes.login);
    }
    else{
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current index & Jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
      pageController.jumpToPage(2);
  }

}