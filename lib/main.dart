import 'package:ecommerce/binding.dart';
import 'package:ecommerce/core/localization/changelocale.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
//import 'package:ecommerce/testwidget.dart';

import 'package:ecommerce/view/screen/language/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeLocale controllerLang = Get.put(ChangeLocale());
    return GetMaterialApp(
      locale: controllerLang.language,            //! Locale Language
      translations: TranslationsApp(),            //! Translations
      initialBinding: MyBinding(),                //! Binding
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: controllerLang.apptheme, //! Theme

      home: Language(),
      routes: routes,
    );
  }
}
