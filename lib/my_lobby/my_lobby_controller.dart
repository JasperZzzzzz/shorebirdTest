import 'package:get/get.dart';

class MyLobbyController extends GetxController {
  int count = 0;

  void increase() {
    count += 1;
    update();
  }
}
