import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeTitleForgetPasswordAuth extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomeTitleForgetPasswordAuth({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: InkWell(
        onTap:onTap ,
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
