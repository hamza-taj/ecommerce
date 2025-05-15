import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServiceApp extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServiceApp> init() async {
    sharedPreferences = await SharedPreferences.getInstance();

    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServiceApp().init());
}
