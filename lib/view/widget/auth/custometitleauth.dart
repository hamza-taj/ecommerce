import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeTitleWithSocial extends StatelessWidget {
  final String title;
  const CustomeTitleWithSocial({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 5, bottom: 15),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: sharPerfLand == "en" ? "Muilsh" : "Cairo",
          fontWeight: FontWeight.bold,
          fontSize: sharPerfLand == "en" ? 14 : 12,
        ),
      ),
    );
  }
}
