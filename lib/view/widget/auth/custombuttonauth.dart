import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeButtonAuth extends GetView<OnBoardingControllerImp> {
  final String? titlebutton;
  final void Function()? onPressed;
  const CustomeButtonAuth({
    super.key,
    required this.titlebutton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 50, left: 50, top: 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          backgroundColor: AppColor.babyBlue,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          titlebutton!,
          style: TextStyle(
            color: AppColor.white,
            fontSize: sharPerfLand == "en" ? 16 : 14,
            fontFamily: sharPerfLand == "ar" ? "Cairo" : "Mulish",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
