import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocale extends GetxController {
  Locale? language;

  MyServiceApp myServiceApp = Get.find();
  //! change language
  chageLang(String langCode) async {
    Locale locale = Locale(langCode);

    myServiceApp.sharedPreferences.setString("lang", langCode);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    //? Arabic
    if (sharPerfLand == "ar") {
      language = const Locale("ar");
    }
    //? English
    else if (sharPerfLand == "en") {
      language = const Locale("en");
    }
    //? Local Device Language
    else if (sharPerfLand == null) {
      language = Locale(Get.deviceLocale!.languageCode);
    } else if (sharPerfLand == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
