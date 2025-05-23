import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce/view/widget/onboarding/customdotcontroller.dart';
import 'package:ecommerce/view/widget/onboarding/customslider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: CustomSliderOnBoarding()),
            CustomDotControllerOnBoarding(),
            CustomButtonOnBoarding(titlebutton: '16'.tr),
          ],
        ),
      ),
    );
  }
}
