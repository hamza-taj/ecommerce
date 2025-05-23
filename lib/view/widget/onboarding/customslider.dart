import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (index) {
        controller.onChangePage(index);
      },
      itemCount: onBoardingList.length,
      itemBuilder:
          (context, index) => Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    onBoardingList[index].imageTop!,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: index == 2 ? 315 : 20,
                    top: 100,
                    child: Image.asset(
                      onBoardingList[index].imageIcon!,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                    left:
                        index == 2 && sharPerfLand == "en"
                            ? 140
                            : index == 2 && sharPerfLand == "ar"
                            ? 190
                            : 20,
                    top: 150,
                    child: Text(
                      onBoardingList[index].title!,
                      style: TextStyle(
                        color: index == 1 ? AppColor.azureBlue : AppColor.white,
                        fontSize: sharPerfLand == "en" ? 24 : 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: sharPerfLand == "en" ? 'Mulish' : 'Cairo',
                      ),
                    ),
                  ),

                  Positioned(
                    top: 190,
                    left:
                        index == 2 && sharPerfLand == "ar"
                            ? 190
                            : index == 2 && sharPerfLand == "en"
                            ? 140
                            : 20,
                    right:
                        index == 2
                            ? 25
                            : index == 0 && sharPerfLand == "ar"
                            ? 150
                            : index == 0 && sharPerfLand == "en"
                            ? 175
                            : index == 1 && sharPerfLand == "ar"
                            ? 240
                            : 200,
                    child: Container(
                      height: 1.1,
                      color: index == 1 ? Colors.black : AppColor.white,
                    ),
                  ),

                  Positioned(
                    left:
                        index == 2 && sharPerfLand == "en"
                            ? 170
                            : index == 2 && sharPerfLand == "ar"
                            ? 270
                            : 20,
                    top: 200,
                    child: Text(
                      onBoardingList[index].titleTop!,
                      style: TextStyle(
                        color: index == 1 ? AppColor.black : AppColor.white,
                        fontSize: sharPerfLand == "en" ? 13 : 11,
                        fontFamily: sharPerfLand == "en" ? 'Mulish' : 'Cairo',
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                margin:
                    index == 1
                        ? EdgeInsets.only(top: 160)
                        : index == 0
                        ? EdgeInsets.only(top: 40)
                        : EdgeInsets.only(top: 0),

                child: Image.asset(
                  onBoardingList[index].image!,
                  height: index == 1 ? 270 : 250,
                  width: index == 1 ? 293 : 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,

                child: Text(
                  onBoardingList[index].titleBottom!,
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: sharPerfLand == "en" ? 20 : 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: sharPerfLand == "en" ? 'Mulish' : 'Cairo',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 30),

                child: Text(
                  onBoardingList[index].description!,
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 13,
                    height: 1.8,
                    fontFamily: sharPerfLand == "en" ? 'Mulish' : 'Cairo',
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
    );
  }
}
