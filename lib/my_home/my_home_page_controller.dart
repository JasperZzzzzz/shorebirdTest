import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class MyHomePageController extends GetxController {
  final RxString appVersion = ''.obs;

  Future getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    appVersion.value = packageInfo.version;
    print(packageInfo.appName);
    print(packageInfo.packageName);
    print(packageInfo.version);
    print(packageInfo.buildNumber);
  }
}
