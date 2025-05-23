import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeSocialAuth extends GetView<OnBoardingControllerImp> {
  final String? titlebutton;
  final String imagename;
  const CustomeSocialAuth({super.key, required this.titlebutton, required this.imagename});

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return Container(
   alignment: Alignment.center,
   padding: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        
          backgroundColor: AppColor.blueGray,

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: () {
         
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset(imagename ,height: 15),
          
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                titlebutton!,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: sharPerfLand == "ar"?12: 14,
                  fontFamily: sharPerfLand == "ar" ? "Cairo" : "Mulish",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
