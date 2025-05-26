import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/localization/changelocale.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/testwidget.dart';

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
      locale: controllerLang.language,    //! Locale Language
      translations: TranslationsApp(),    //! Translations
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        primaryColor: AppColor.azureBlue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16),
        ),
      ),
    //home: SimpleOTPWidget(onComplete: (String ) {  },),
      home: Language(),
      routes: routes,
    );
  }
}
