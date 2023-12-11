import 'package:get/get.dart';
import 'package:shorebird_test/my_lobby/my_lobby_controller.dart';

class MyLobbyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyLobbyController>(() => MyLobbyController());
  }
}
