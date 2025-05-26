import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeDiscrptionForgetPassword extends StatelessWidget {
  final String title;
  const CustomeDiscrptionForgetPassword({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return Container(
      
      alignment: Alignment.center,
      padding: sharPerfLand == "en" ? EdgeInsets.symmetric(horizontal: 35):EdgeInsets.only(right: 30,left: 20),
      child: Text(
        title,
        style: TextStyle(
          height: 2,
          fontFamily: sharPerfLand == "en" ? "Mulish" : "Cairo",
          fontWeight: FontWeight.w500,
          fontSize: sharPerfLand == "en" ? 14 : 12,
        ),
      ),
    );
  }
}
