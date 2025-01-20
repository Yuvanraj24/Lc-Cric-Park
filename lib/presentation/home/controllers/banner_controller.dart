import 'package:get/get.dart';
import 'package:lk_cric_park/core/assets/images.dart';
import 'package:lk_cric_park/data/repositories/banners/banner_repository.dart';
import 'package:lk_cric_park/presentation/home/models/banner/banner_model.dart';
import 'package:lk_cric_park/widgets_common/custom_toasts/toasts.dart';

class BannerController extends GetxController {
  /// Variables
  final isLoading = false.obs;
  final carousalCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[
    BannerModel(imageUrl: AppImages.banner1, active: false),
    BannerModel(imageUrl: AppImages.banner2, active: true),
    BannerModel(imageUrl: AppImages.banner3, active: true),
  ].obs;

  @override
  void onInit() {
    // fetchBanners();
    super.onInit();
  }

  /// Update Page Navigational Dots
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  /// Fetch Banners
  Future<void> fetchBanners() async {
    try {
      // Show the while loading categories
      isLoading.value = true;

      // Fetch Banners
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      // Assign Banners
      this.banners.assignAll(banners);
    } catch (e) {
      SiajToasts.errorSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      // Remove Loader
      isLoading.value = false;
    }
  }
}
