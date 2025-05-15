import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/data/datasources/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
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
                    left: index == 2 ? 140 : 20,
                    top: 150,
                    child: Text(
                      onBoardingList[index].title!,
                      style: TextStyle(
                        color: index == 1 ? AppColor.azureBlue : AppColor.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish',
                      ),
                    ),
                  ),

                  Positioned(
                    top: 187,
                    left: index == 2 ? 140 : 20,
                    right:
                        index == 2
                            ? 25
                            : index == 0
                            ? 170
                            : 200,
                    child: Container(
                      height: 1.1,
                      color: index == 1 ? Colors.black : AppColor.white,
                    ),
                  ),

                  Positioned(
                    left: index == 2 ? 170 : 20,
                    top: 200,
                    child: Text(
                      onBoardingList[index].titleTop!,
                      style: TextStyle(
                        color: index == 1 ? AppColor.black : AppColor.white,
                        fontSize: 13,
                        fontFamily: 'Mulish',
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
                  height: index == 1 ? 300 : 250,
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mulish',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),

                child: Text(
                  onBoardingList[index].description!,
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 13,
                    height: 1.6,
                    fontFamily: 'Mulish',
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
    );
  }
}
