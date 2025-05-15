import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/data/datasources/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder:
          (controller) => Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onBoardingList.length,
                (indexDots) => AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  margin: EdgeInsets.only(right: 10),
                  width: controller.currentPage == indexDots ? 20 : 8,
                  height: 8,

                  decoration: BoxDecoration(
                    color:controller.currentPage == indexDots? AppColor.azureBlue : AppColor.babyBlue,

                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
