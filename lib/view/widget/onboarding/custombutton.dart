import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  final String? titlebutton;
  const CustomButtonOnBoarding({super.key, required this.titlebutton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          backgroundColor: Colors.blue,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: () {
          controller.nextPage();
        },
        child: Text(
          titlebutton!,
          style: TextStyle(
            color: AppColor.white,
            fontFamily: "Mulish",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
