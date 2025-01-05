import 'package:get/get.dart';
import 'package:lk_cric_park/presentation/main/controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }

}