import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServiceApp extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServiceApp> init() async {
    await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();

    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServiceApp().init());
}
