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
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: InkWell(
        child: Text(
          title,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontFamily: sharPerfLand == "en" ? "Mulish" : "Cairo",
            fontSize: sharPerfLand == "en" ? 14 : 12,
          ),
        ),
      ),
    );
  }
}
