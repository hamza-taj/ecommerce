import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomStackAuth extends StatelessWidget {
  final String title;
  final Color? colorstack;

  const CustomStackAuth({super.key, required this.title, this.colorstack});


  @override
  Widget build(BuildContext context) {

    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.5,
      child: Stack(
        children: [
          Image.asset(
            Appimageassest.loginimageone,
            fit: BoxFit.cover,
            width: double.infinity,
            color:colorstack ,
          ),
          Positioned(
            left: 77,
            top: 112,
            child: Image.asset(Appimageassest.onBoardingIconThree),
          ),
          Positioned(
            left: 140,
            top: sharPerfLand == "en" ? 120 : 125,
            child: Text(
              "4".tr,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: AppColor.black,

                fontFamily: sharPerfLand == "en" ? "PlayfairDisplay" : "Cairo",
                fontSize: sharPerfLand == "en" ? 22 : 17,
              ),
            ),
          ),
          Positioned(
            left: sharPerfLand == "en" ? 155 : 125,
            top: 340,

            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: AppColor.black,
                fontFamily: "Muilsh",
                fontSize:sharPerfLand == "en"? 25:25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
