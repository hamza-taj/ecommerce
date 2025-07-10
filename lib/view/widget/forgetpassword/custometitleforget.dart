import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeTitleForgetPassword extends StatelessWidget {
  final String title;
  const CustomeTitleForgetPassword({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          color: AppColor.black,
          fontFamily: sharPerfLand == "en" ? "Muilsh" : "Cairo",
          fontSize: sharPerfLand == "en" ? 26 : 20,
        ),
      ),
    );
  }
}
