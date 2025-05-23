import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/localization/changelocale.dart';
import 'package:ecommerce/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<ChangeLocale> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomeButtonLanguage(
                  titleicon: "2".tr,
                  onPressed: () {
                    controller.chageLang("ar");
                    Get.offAllNamed(AppRoute.onboarding);
                  },
                ),
                SizedBox(width: 50),
                CustomeButtonLanguage(
                  titleicon: "3".tr,
                  onPressed: () {
                    controller.chageLang("en");
                     Get.offAllNamed(AppRoute.onboarding);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
