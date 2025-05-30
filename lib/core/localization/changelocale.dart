import 'package:ecommerce/core/constants/apptheme.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocale extends GetxController {
  Locale? language;

  MyServiceApp myServiceApp = Get.find();
  ThemeData apptheme = themeEnglish;

  //! change language
  chageLang(String langCode) async {
    Locale locale = Locale(langCode);

    myServiceApp.sharedPreferences.setString("lang", langCode);

    apptheme = langCode == "ar" ? themeArbic : themeEnglish;
    
    Get.changeTheme(apptheme);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    //? Arabic
    if (sharPerfLand == "ar") {
      language = const Locale("ar");
      apptheme = themeArbic;
    }
    //? English
    else if (sharPerfLand == "en") {
      language = const Locale("en");
      apptheme = themeEnglish;
    }
    //? Local Device Language
    else if (sharPerfLand == null) {
      language = Locale(Get.deviceLocale!.languageCode);
      apptheme =
          Get.deviceLocale!.languageCode == "ar" ? themeArbic : themeEnglish;
    } else if (sharPerfLand == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      apptheme =
          Get.deviceLocale!.languageCode == "ar" ? themeArbic : themeEnglish;
    }

    super.onInit();
  }
}
