import 'package:get/get.dart';
import 'package:shorebird_test/my_home/my_home_page_controller.dart';

class AllControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyHomePageController>(() => MyHomePageController());
  }
}
